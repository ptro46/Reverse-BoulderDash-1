# Sortie de grotte — vérification du disque Amstrad

Source : `BoulderDash-1.dsk`, SHA-256 `6ff0a057ac276e67f7c7346219ffb7b5688c050dc4c6b133d4625dc591033160`.
Adresses après relocation du chargeur, dans `Extracted/relocated.bin`.

## Quota de diamants et flash

`0x0965` compare les deux chiffres BCD du nombre ramassé (0x00b9–0x00ba) à ceux du quota (0x00bb–0x00bc). À égalité, il pose le drapeau 0x0062, remplace la valeur des diamants par la valeur supplémentaire, appelle le son 0x0857 et charge 8 dans le compteur 0x007a.

`0x2aef` utilise ce compteur pour modifier les encres 0 et 5. La séquence de codes Gate Array vérifiée par exécution est : **48, 47, 46, 45, 44, 43, 42, 54** (hexadécimal). Il s'agit d'un changement des couleurs des pixels concernés, pas d'un tremblement géométrique de la caméra. Le port applique donc ces changements de palette à la grotte et conserve les autres encres.

Le son d'ouverture `0x0857` règle le canal B : bruit 31, période 255, volume 15 et drapeau 0x0136. Le son du diamant sur le canal C reste distinct (`0x099f`). La version précédente réutilisait seulement le son du diamant et ne rendait pas le flash.

Le quota n'est pas nécessairement la totalité des diamants présents : les diamants supplémentaires restent disponibles.

## Clignotement de la porte

`0x0483` transforme le type de case 4 en type 5 lorsque 0x0062 est actif. Le type 5 appelle `0x0b87`, qui incrémente 0x00c2 et teste son bit 1. Deux passages dessinent la sortie ; les deux autres appellent `0x0b5a` / `0x0b3d`, qui écrivent les sous-tuiles 0,1,2,3, identiques au dessin de la case fermée 4. Le probe confirme le cycle **ouverte, mur, mur, ouverte**. Le passage reste ouvert même pendant la phase visuelle « mur ».

Ce n'est donc pas un remplacement de la porte par le sprite d'un diamant : c'est un clignotement du graphisme de sortie. La version Rust garde ce cycle et la collision ouverte.

## Entrée et fin de grotte

`0x0a56` reconnaît le type 5 et pose les drapeaux 0x0069 et 0x0074. `0x1d4f` mène alors à `0x1ce0` : le temps restant est décrémenté et rapporté au score, pour la valeur difficulté+1 (0x0084 est numérotée à partir de zéro). À chaque unité de temps, `0x1bff` règle quatre périodes sonores successives autour du compteur 0x00f5. Après le décompte, `0x1255` impose un délai ; `0x15af` appelle ensuite l'effacement `0x0e28`, qui dessine le caractère de 0x3000 sur des positions pseudo-aléatoires.

La version Rust présente maintenant le décompte animé, le son de bonus et un effacement par caractères d'origine avant le panneau de fin. Le terrain et les ennemis sont figés après l'entrée ; le score n'est crédité qu'une fois. Le motif est celui du disque, mais l'ordre d'effacement est un hachage déterministe indépendant de l'aléatoire du jeu.

## Reproduction et limites

`Tools/extract_exit_effects.py` exécute les routines Z80 ciblées, vérifie les comparaisons de quota et les branches de clignotement/entrée, puis exporte :

- `assets/cave-flash.png` : sprites sous les huit états de palette ;
- `assets/cave-wipe.png` : caractère 0x3000 sous les vingt palettes ;
- `assets/exit-open.wav` et `assets/exit-bonus.wav` : synthèse AY depuis les registres du code original ;
- `assets/exit-effects.json` : provenance, adresses, probes et paramètres temporels ;
- `assets/exit-*.ay.json` : traces de registres AY.

Le générateur de bonus fait tourner 0x1bff à une cadence Z80 théorique de 4 MHz avec interruptions audio synthétiques à 300 Hz. Les accès de ports AY sont interceptés et la contention mémoire du CPC n'est pas simulée. Le pilote du son d'ouverture est appelé à 50 Hz ; le flash est présenté à 50 Hz, et le clignotement suit les tours de simulation du moteur Rust. L'effacement dure 0,5 seconde pour rester lisible. Ces effets reprennent les données et le comportement du disque, sans prétendre à une équivalence temporelle au cycle près.

Vérification visuelle : `--exit-effects-demo` joue une scène isolée avec quota à un diamant. La scène se répète toutes les huit secondes, sans modifier les ressources ni les sauvegardes. La fonctionnalité Cargo `exit-effects-demo` permet de la lancer directement dans un paquet Mac de vérification.
