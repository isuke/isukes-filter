# Isuke's Filter

Isuke's Filter if simple and useful poe filter.

created by [poe filter generator](https://github.com/isuke/poe_filter_generator)

[DOWNLOAD](https://github.com/isuke/isukes-filter/releases)

## Screenshots

### before

![before1](https://raw.githubusercontent.com/isuke/isukes-filter/images/before1.jpg)

### after

![after1](https://raw.githubusercontent.com/isuke/isukes-filter/images/after1.jpg)

## Kind of Files

filter is exist 4 types (`C`/`B`/`A`/`S`).
You can use it properly by your level.

| Your Level                                 | Filer file                                                           |
| ------------------------------------------ | -------------------------------------------------------------------- |
| From start to the Lioneye's Watch          | not use filter or use `<default>`.                                   |
| From The Lioneye's Watch to about Level 30 | use `C.filter`. display magic items.                                 |
| From about Level 30 to about Level 65      | use `B.filter`. hide magic items. hide small flasks.                 |
| From about Level 65 to about Level 90      | use `A.filter`. hide non quality life and magic flasks.              |
| Level 90 or later                          | use `S.filter`. hide low drop level rare items.                      |

## explain

### Mechanism

The following settings are merged.
For example, Rare Bow of High Drop Level and 6L is displayed by font color yellow, background color red and border color Orange (Yeay!).
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

- Rare
  - Vaal Gems
  - Added Chaos Damage
  - Detonate Mines
  - Portal
- Unique
  - Enhance
  - Enlighten
  - Empower

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

###### Special Equipments

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
| Dark Green       | Labyrinth Items                           |
| Dark Orange      | Atlas Items                               |
| Dark Blue        | Prophecy Items                            |
| Purple           | Essence Items                             |
| Brown            | Breach Items                              |

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
- Breach Items
  - Splinter of Xoph
  - Splinter of Tul
  - Splinter of Esh
  - Splinter of Uul-Netol
  - Splinter of Chayula
  - Blessing of Xoph
  - Blessing of Tul
  - Blessing of Esh
  - Blessing of Uul-Netol
  - Blessing of Chayula
  - Xoph's Breachstone
  - Tul's Breachstone
  - Esh's Breachstone
  - Uul-Netol's Breachstone
  - Chayula's Breachstone

### Others

#### Good accessories

Normal Good accessories displeyed small and purple.
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

#### Chance Items

Normal Change Items dispalyed small and blue gray for chance.

- Chance Items
  - Sorcerer Boots
  - Leather Belt

#### Good ES armours

Normal Good ES armours displayed small and dark orange for craft.

- GoodESArmours:
  - Vaal Regalia
  - Sorcerer Boots
  - Sorcerer Gloves
  - Hubris Circlet
  - Titanium Spirit Shield

## Development


```
bundle install
poe_filter_generator generate filter.ru . aliases.yml
```
