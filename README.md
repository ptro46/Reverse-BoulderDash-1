# Boulder Dash — CPC → Rust

Version **0.3.0** : effets de sortie vérifiés dans le programme Amstrad. Commandes conservées : Logitech Dual Action USB 046d:c216 — stick droit / croix pour se déplacer, B5/B6/B7/B8 pour creuser sur place, B1 pause, B2 carte complète et B10 menu.

Version jouable native, créée depuis `BoulderDash-1.dsk`. Les cartes, les sprites, les animations et les données musicales viennent du disque fourni. Le jeu tourne avec un moteur Rust réécrit : aucun émulateur, ROM CPC, Python ou fichier DSK n'est nécessaire pour lancer l'application compilée.

## Lancer sur Mac

Ouvrir `build/Boulder Dash.app` par double-clic. Le paquet actuel est compilé pour **Mac Apple Silicon (arm64)** et signé localement. Les ressources sont intégrées dans le binaire, sans chemin absolu vers ce dossier.

Pour reconstruire :

```sh
cd /Users/ptro/Projets/BoulderDash
./build-app.sh
```

Ou lancer depuis les sources : `cargo run --release`.

## Commandes

| Touche | Action |
|---|---|
| Entrée | Jouer / poursuivre après la mort ou la sortie |
| Flèches, WASD ou ZQSD | Déplacer Rockford |
| Majuscule + direction | Creuser ou prendre un diamant sans avancer |
| Espace | Pause |
| Tab | Alterner vue avec défilement 20 × 12 et vue complète 40 × 22 |
| R | Recommencer la grotte, en consommant une vie |
| Échap | Revenir au choix des grottes ; depuis le menu, quitter |
| M | Couper / rétablir le son |
| F | Plein écran |

### Logitech Dual Action

La manette est reconnue automatiquement au démarrage ou lorsqu'elle est branchée. Le menu affiche `PAD: Logitech Dual Action`. Le clavier et la souris restent utilisables.

| Commande de la manette | Action |
|---|---|
| Stick droit ou croix directionnelle | Déplacer Rockford ; au menu, gauche/droite choisit la grotte et haut/bas la difficulté |
| Boutons **7**, **5**, **8** ou **6**, maintenus avec une direction | Creuser ou prendre un diamant sans avancer |
| Bouton **1** | Pause / reprise ; depuis le menu ou après la fin d’une grotte, jouer / continuer |
| Bouton **2** | Afficher / masquer la carte complète |
| Bouton **10** | Retour au choix des grottes |
| Boutons **3**, **4**, **9**, **11**, **12** | Aucune commande affectée |

Les numéros sont ceux inscrits sur la Dual Action. Le stick gauche ne commande pas Rockford. Une zone morte avec hystérésis stabilise le stick ; les déplacements diagonaux sont ramenés à l'axe dominant. Les actions de menu, pause et confirmation ne se répètent pas en maintenant le bouton. La navigation directionnelle du menu possède sa propre répétition temporisée. Débrancher la manette active met la partie en pause ; la rebrancher ne relance pas la partie automatiquement.

Le backend multiplateforme est `gilrs` (IOHID sur Mac) avec son profil SDL Logitech d'origine. Si plusieurs manettes sont présentes, la Dual Action 046d:c216 est choisie en priorité. Une erreur d'initialisation laisse le clavier disponible.

**F2** affiche/masque les valeurs du stick et des boutons pour vérifier le centrage et le profil de la manette.

Diagnostic hors interface graphique : `cargo run --example gamepad_probe -- 15` affiche les manettes et leurs événements pendant 15 secondes. Le terminal isolé de l'agent peut ne voir aucune manette, alors que l'application lancée normalement la voit.

Au menu : gauche/droite choisit la grotte, haut/bas la difficulté. Les boutons sont également cliquables. Les 16 grottes et les 4 intermissions sont accessibles, avec 5 difficultés chacune.

## Ce qui fonctionne

- Déplacements, excavation, collecte et valeur supplémentaire après le quota.
- Gravité, chute mortelle et roulement des rochers et diamants ; poussée horizontale probabiliste.
- Lucioles et papillons avec rotation opposée ; explosions en chaîne et diamants produits par les papillons.
- Croissance de l'amibe ; transformation en diamants si enfermée, en rochers si trop grosse.
- Mur magique transformant rochers en diamants et inversement pendant sa durée active.
- Sortie déverrouillée au quota : flash de huit couleurs, son d’ouverture et clignotement de la porte.
- Entrée dans la sortie : décompte rapide du temps en points, son de bonus et effacement par le caractère du disque avant le panneau de fin.
- Temps, score, vies, intermissions et progression A–P avec les intermissions après D/H/L/P.
- Animations de Rockford, palettes par grotte, musique du menu et huit effets sonores reconstruits.
- Rendu Metal sur Mac, fenêtre redimensionnable et plein écran.

## Ressources extraites

| Chemin | Contenu |
|---|---|
| `Extracted/` | 4 fichiers du disque, en-têtes AMSDOS, mémoire et manifeste SHA-256 |
| `assets/caves.bin` | 100 cartes exactes de 40 × 22 cases, produites par les routines Z80 originales |
| `assets/caves.json` | Quotas, temps, valeurs, difficulté, paramètres et palettes |
| `assets/sprites.png` | 64 types de cases et 17 images de Rockford, sous 20 palettes |
| `assets/graphics-bank.bin` | Banque graphique originale 0x2c00–0x5daf |
| `assets/graphics-bank.png` | Aperçu brut des tuiles, caractères et animations de cette banque |
| `assets/caves-contact.png` | Planche des 20 grottes en difficulté 1 |
| `assets/title.wav` | Musique du menu, boucle reconstruite de 40,96 secondes |
| `assets/{step,dig,diamond,rock,death,amoeba}.wav` | Effets reconstruits à partir des routines originales |
| `assets/cave-flash.png`, `assets/cave-wipe.png` | Palettes du flash et caractère d’effacement d’origine |
| `assets/exit-open.wav`, `assets/exit-bonus.wav` | Sons d’ouverture de sortie et de bonus |
| `assets/exit-effects.json` | Traces vérifiées, adresses des routines et paramètres des effets |
| `assets/*.ay.json` | Registres AY successifs utilisés pour la synthèse audio |
| `assets/manifest.json` | Provenance, adresses et empreintes des fichiers |
| `Notes/linear.asm` | Désassemblage linéaire de référence, mélangeant code et données |

Le disque est un DSK CPC DATA à 40 pistes, 9 secteurs par piste. Le chargeur copie `BOULD.BIN` de 0x3200 à 0x0200. Les outils exécutent les routines du jeu d'origine **hors ligne**, pendant l'extraction, pour conserver exactement les cartes et leurs graines pseudo-aléatoires.

Reproduire l'extraction (Python ne sert qu'à cette opération) :

```sh
python3 -m venv .venv
.venv/bin/pip install -r Tools/requirements.txt
.venv/bin/python Tools/extract_assets.py
.venv/bin/python Tools/extract_exit_effects.py
.venv/bin/python Tools/validate_assets.py
```

## Architecture et portabilité

`src/lib.rs` contient la simulation déterministe, indépendante de l'affichage. `src/effects.rs` gère le décompte, le délai et l’effacement de fin de grotte. `src/controller.rs` adapte les manettes et contient leurs tests. `src/main.rs` contient le rendu, les entrées et l'audio, via Macroquad. `Cargo.lock` verrouille les dépendances.

Les sources ciblent aussi Linux et Windows via Macroquad ; ces deux plateformes et les Mac Intel n'ont pas été compilés ni testés ici. Sur une autre machine avec Rust et les dépendances système de Macroquad : `cargo build --release --locked`. L'application Mac utilise Metal ; les autres cibles utilisent le backend de leur plateforme.

## Validation et limites

Commandes :

```sh
cargo test --all-targets
cargo clippy --all-targets -- -D warnings
python3 Tools/validate_assets.py
```

Dix-neuf tests vérifient la conversion des commandes de manette (zone morte, hystérésis, sens vertical, priorité de la croix, boutons maintenus et répétition des menus), ainsi que les 100 cartes, la chute à une seule case par tour, l'écrasement, le rocher immobile, la collecte sur place, les explosions de papillons, le mur magique et des simulations longues. Les nouveaux tests vérifient le déclenchement unique au quota, la porte clignotante toujours traversable, le score de bonus crédité une seule fois et son indépendance de la fréquence d’affichage. Menu, rendu Metal, déplacement et pause au clavier ont été vérifiés dans la fenêtre Mac lors de la première version. La détection de la Logitech Dual Action a été vérifiée dans la fenêtre Mac de la version 0.2.0 ; les tests automatisés des commandes utilisent des entrées synthétiques. Le 24 octobre 2026, l’utilisateur a également confirmé que les commandes fonctionnent sur sa manette physique pour la version 0.2.0. Le remappage 0.2.2 est couvert par les tests automatisés ; il reste à confirmer physiquement.

Il s'agit d'une première réécriture jouable, pas encore d'une reproduction certifiée au cycle près : cadence, tirages aléatoires en cours de partie, détails de l'amibe et réactions simultanées des ennemis peuvent différer du Z80 original. Les cartes initiales, elles, proviennent de ses routines. L'audio est une synthèse numérique des registres AY : elle ne reproduit pas le filtrage analogique du CPC ni tous les comportements d'enveloppe. La campagne n'a pas été terminée manuellement de bout en bout. Deux joueurs, sauvegarde des scores et animations d'écran originales ne sont pas implémentés.

## Vérification des effets de sortie

Le détail du désassemblage et les adresses sont consignés dans `Notes/exit-effects.md`. `Tools/extract_exit_effects.py` vérifie par exécution du Z80 les états 11/12 puis 12/12 diamants, les deux branches de dessin de porte et les drapeaux d’entrée. Le motif d’effacement et les huit palettes viennent directement du disque ; les deux sons supplémentaires sont synthétisés depuis les registres AY de ces routines. Les cadences excluent la contention du CPC et l’effacement garde un ordre déterministe propre au port.

`cargo run --release --features exit-effects-demo` lance une scène isolée et répétée pour contrôler les effets. La compilation normale et `build-app.sh` n’activent pas ce mode.

La scène de vérification Mac 0.3.0 a permis d’observer les deux apparences de la porte et le résultat du décompte/effacement. Le paquet normal a ensuite été rouvert sur son menu, avec la Logitech Dual Action détectée.
