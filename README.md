# Isuke's Filter

Isuke's Filter if simple and useful poe filter.

created by [poe filter generator](https://github.com/isuke/poe_filter_generator)

[DOWNLOAD](https://github.com/isuke/isukes-filter/releases)

# Screenshots

### before

![before1](https://raw.githubusercontent.com/isuke/isukes-filter/images/before1.jpg)

### after

![after1](https://raw.githubusercontent.com/isuke/isukes-filter/images/after1.jpg)


## Kind of Files

filter is exist 3 types (`Low`/`Middle`/`High`).
You can use it properly by your level.

| Your Level                                 | Filer file                                                          |
| ------------------------------------------ | ------------------------------------------------------------------- |
| From start to the Lioneye's Watch          | not use filter.                                                     |
| From The Lioneye's Watch to about Level 20 | use `Low.filter`. display magic items.                              |
| From about Level 20 to about Level 60      | use `Middle.filter`. hide magic items. hide small flasks.           |
| Level 60 or later                          | use `High.filter`. hide non quality life and magic flasks. hide 5s. |

## explain

### Mechanism

The following settings are merged.
For example, Rare Bow of High Drop Level and 6L is displayed font color yellow, background color red and border color Orange (Yeay!).
If you want rara and high tier map you find font color white, background color red and border color yellow Item (Great!).

### Font Color

#### Font Color Represents Class

| Font Color                   | Represents           |
| ---------------------------- | -------------------- |
| Gray (Default Color)         | Currency             |
| Red                          | Life and Magic Flask |
| Green                        | Utility Flask        |
| Purple                       | Hybrid Flask         |
| Green (Default Color)        | Gem                  |
| White                        | Map                  |
| Light Green                  | Jewel                |
| Light Blue (Default Color)   | Divination Card      |
| Orange (Default Color)       | Unique Equipments    |
| Yellow (Default Color)       | Rara Equipments      |
| Light Purple (Default Color) | Magic Equipments     |
| Green (Default Color)        | Quest Item           |

### Border Color

#### Border Color Represents Item Rarity

Border Color reporesnts *item rarity*.
The meaning of *item reality* depends on the item.

##### Currencies

- Magic
  - Armourer's Scrap
  - Blacksmith's Whetstone
  - Orb of Transmutation
  - Orb of Augmentation
  - Orb of Alteration
  - Orb of Chance
  - Chromatic Orb
  - Jeweller's Orb
- Rara
  - Glassblower's Bauble
  - Cartographer's Chisel
  - Gemcutter's Prism
  - Orb of Alchemy
  - Chaos Orb
  - Blessed Orb
  - Orb of Scouring
  - Orb of Fusing
  - Orb of Regret
  - Vaal Orb
  - Perandus Coin
- Unique
  - Divine Orb
  - Exalted Orb
  - Regal Orb
  - Mirror of Kalandra

##### Gems

- Unique
  - Vaal Gems
  - Added Chaos Damage
  - Enhance
  - Enlighten
  - Empower
  - Detonate Mines
  - Portal

##### Flasks

Rarity.

##### Jewels

Rarity.

##### Divinations

Value when selling.

##### Equipments

- Magic
  - RGB Sockets (for Chromatic Orb)
- Rara
  - 6S (for Jeweller's Orb)
- Unique
  - 5L
  - 6L
  - Special Equipments

- Special Equipments
  - Sacrificial Garb
  - Bone Helmet
  - Two-Toned Boots
  - Spiked Gloves
  - Gripped Gloves
  - Fingerless Silk Gloves
  - Marble Amulet
  - Blue Pearl Amulet
  - Vanguard Belt
  - Crystal Belt
  - Opal Ring
  - Steel Ring

### Background Color

#### Red/Yellow Background Color Represents Quality/Tier/Drop Level

| Background Color | Class                | Represents           |
| ---------------- | -------------------- | -------------------- |
| Yellow           | Flask/Gem            | Middle Quality (1-9) |
| Rad              | Flask/Gem            | High Quality (10-20) |
| Yellow           | Map                  | Middle Tier          |
| Rad              | Map                  | High Tier            |
| Yellow           | Equipment            | Middle Drop Level    |
| Rad              | Equipment            | High Drop Level      |

#### Other Background Color Represents Kind of Items

| Background Color | Represents                                |
| ---------------- | ----------------------------------------- |
| Dark Purple      | Hammer (for Cartographer's Chisel)        |
| Blue Gray        | Chance Items                              |
| Dark Green       | Labyrinth Items                           |
| Dark Orange      | Atlas Items                               |
| Dark Blue        | Prophecy Items                            |
| Purple           | Essence Items                             |
| Brown            | League Items (Different for each leagues) |

- Chance Items
  - Assassin's Garb
  - Glorious Plate
  - Prophecy Wand
  - Sapphire Flask
  - Occultist's Vestment
  - Deicide Mask
  - Sorcerer Boots
  - Jewelled Foil
  - Agate Amulet
  - Leather Belt
- Labyrinth Items
  - Offering to the Goddess
  - Bane of the Loyal
  - Orb of Elemental Dispersion
  - Sand of Eternity
  - Portal Shredder
  - Heart of the Gargoyle
  - Cogs of Disruption
  - Absorption
  - Rod of Detonation
  - Golden Key
  - Silver Key
  - Treasure Key
- Atlas Items
  - Shaper's Orb
  - Cartographer's Sextant
  - Cartographer's Seal
- Prophecy Items
  - Silver Coin
  - Prophecy

### Others

Normal Good accessories displeyed small.
You can use essence to this item for chaos receipe or craft.

- Good Accessories
  - Amber Amulet
  - Jade Amulet
  - Lapis Amulet
  - Agate Amulet
  - Citrine Amulet
  - Turquoise Amulet
  - Onyx Amulet
  - Rustic Sash
  - Heavy Belt
  - Leather Belt
  - Coral Ring
  - Diamond Ring
  - Two-Stone Ring

