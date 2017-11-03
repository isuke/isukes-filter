# Isuke's Filter

Isuke's Filter if simple and useful poe filter.

created by [poe filter generator](https://github.com/isuke/poe_filter_generator)

[Try It](http://filterblast.oversoul.xyz/advanced/Template/1hkc0eb)

[DOWNLOAD](https://github.com/isuke/isukes-filter/releases)

## Screenshots

### Before

![none](https://raw.githubusercontent.com/isuke/isukes-filter/images/none.jpg)

### After

![filter_S](https://raw.githubusercontent.com/isuke/isukes-filter/images/filter_S.jpg)

## Kind of Files

filter is exist 4 types (`C`/`B`/`A`/`S`).
You can use it properly by your level.

| Your Level                                 | Filer file                         |
| ------------------------------------------ | ---------------------------------- |
| From start to the Lioneye's Watch          | not use filter or use `<default>`. |
| From The Lioneye's Watch to about Level 30 | use `C.filter`.                    |
| From about Level 30 to about Level 65      | use `B.filter`.                    |
| From about Level 65 to about Level 90      | use `A.filter`.                    |
| Level 90 or later                          | use `S.filter`.                    |

## Explain

### Mechanism

**The following settings are merged.**

#### For example, `Rare Bow of High Drop Level and 6L`
- font color yellow
- background color red
- border color orange

#### For example, `rara and high tier map`
- font color white
- background color red
- border color yellow

### Font Color

#### Font Color Represents Class

| Font Color                   | Represents           |
| ---------------------------- | -------------------- |
| Gray (Default Color)         | Currency             |
| Red                          | Life, Magic and Hybrid Flask |
| Green                        | Utility Flask        |
| Green (Default Color)        | Gem                  |
| White                        | Map                  |
| Moss Green                   | Jewel                |
| Light Blue (Default Color)   | Divination Card      |
| Orange (Default Color)       | Unique Equipments    |
| Yellow (Default Color)       | Rare Equipments      |
| Light Purple (Default Color) | Magic Equipments     |
| Green (Default Color)        | Quest Item           |

### Border Color

#### Border Color Represents Item Rarity

Border Color reporesnts *item rarity*.
The meaning of *item reality* depends on the item.

##### Currencies

- Normal
  - Armourer's Scrap
  - Blacksmith's Whetstone
  - Scroll Fragment
  - Scroll of Wisdom
  - Portal Scroll
- Magic
  - Alteration Shard
  - Transmutation Shard
  - Orb of Transmutation
  - Orb of Augmentation
  - Orb of Alteration
  - Orb of Chance
  - Chromatic Orb
  - Jeweller's Orb
- Rare
  - Alchemy Shard
  - Chaos Shard
  - Regal Shard
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
  - Regal Orb
- Unique
  - Mirror Shard
  - Exalted Shard
  - Divine Orb
  - Exalted Orb
  - Mirror of Kalandra
  - Albino Rhoa Feather

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
- Rare
  - 6S (for Jeweller's Orb)
- Unique
  - 5L
  - 6L

### Background Color

#### Red/Yellow Background Color Represents Quality/Tier

| Background Color | Class                | Represents           |
| ---------------- | -------------------- | -------------------- |
| Yellow           | Flask/Gem            | Middle Quality (1-9) |
| Rad              | Flask/Gem            | High Quality (10-20) |
| Yellow           | Map                  | Middle Tier          |
| Rad              | Map                  | High Tier            |

#### Other Background Color Represents Kind of Items

| Background Color | Represents           |
| ---------------- | -------------------- |
| Light Red        | Accessory            |
| Red              | Good Accessory       |
| Geen             | Good DPS Wepon       |
| Geen             | Good Critical Dagger |
| Moss Geen        | Good STR Armour      |
| Moss Geen        | Good DEX Armour      |
| Moss Geen        | Good INT Armour      |
| Dark Blue        | Special Gear         |
| Dark Blue        | Special Accessory    |
| Dark Green       | Labyrinth Items      |
| Brown            | Atlas Items          |
| Light Purple     | Oriath Items         |
| Purple           | Prophecy Items       |
| Bule Purple      | Essence Items        |
| Dark Brown       | Breach Items         |
| Light Moss Green | Harbinger Items      |

- GoodAccessory
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
  - Prismatic Ring
- Good DPS Wepon
  - Despot Axe
  - Siege Axe
  - Harbinger Bow
  - Gemini Claw
  - Imperial Claw
  - Demon Dagger
  - Ambusher
  - Skean
  - Coronal Maul
  - Exquisite Blade
  - Spiraled Foil
  - Jewelled Foil
  - Harpy Rapier
- Good Critical Dagger
  - Copper Kris
  - Golden Kris
- Good STR Armour
  - Pinnacle Tower Shield
  - Astral Plate
- Good DEX Armour
  - Assassin's Garb
- Good INT Armour
  - Vaal Regalia
  - Saintly Chainmail
  - Sorcerer Boots
  - Sorcerer Gloves
  - Titanium Spirit Shield
  - Harmonic Spirit Shield
  - Fossilised Spirit Shield
- Special Gear
  - Two-Toned Boots
  - Spiked Gloves
  - Gripped Gloves
  - Fingerless Silk Gloves
  - Crystal Belt
  - Sacrificial Garb
  - Bone Helmet
- Special Accessory
  - Marble Amulet
  - Blue Pearl Amulet
  - Vanguard Belt
  - Opal Ring
  - Steel Ring
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
- Oriath Items
  - Divine Vessel
  - Pantheon Soul
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
- Harbinger Items
  - Orb of Annulment
  - Orb of Binding
  - Orb of Horizons
  - Harbinger's Orb
  - Engineer's Orb
  - Ancient Orb
  - Annulment Shard
  - Binding Shard
  - Horizon Shard
  - Harbinger's Shard
  - Engineer's Shard
  - Ancient Shard

### Others

#### Chance Items

Normal Change Items dispalyed small and light blue purple for chance.

- Chance Items
  - Sorcerer Boots
  - Leather Belt

#### Chisel Recipe

Hammer for Cartographer's Chisel displayed small and light red.

#### Chaos/Regal Recipe (`S` filter only)

Chaos/Regal Recipe Item displayed small and light blue.

## Development

```
bundle install
poe_filter_generator generate filter.ru . aliases.yml
```
