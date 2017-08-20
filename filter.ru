# Verson
PoeVersion         = '3.0'
FilterVersion      = '3.0'

# Font Size
SmallFontSize      = 32
DefaultFontSize    = 39
LargeFontSize      = 42
ExtraLargeFontSize = 45

# Color
Black       = '  0   0   0'
White       = '255 255 255'
Brown1      = '124  81  50'
Brown2      = '191  91   0'
Brown3      = '254 191 128'
BluePurple1 = ' 38   0  86'
BluePurple2 = ' 88   0 179'
BluePurple3 = '192 128 254'
MossGreen1  = ' 98 128   0'
MossGreen2  = '191 244   0'
MossGreen3  = '239 254 128'
Red1        = ' 86   0   0'
Red2        = '191   0   0'
Red3        = '254 128 128'
Blue1       = '  0   0 128'
Blue2       = '  0   0 254'
Blue3       = '128 179 254'
Yellow1     = '254 170   0'
Yellow2     = '254 213   0'
Yellow3     = '254 254 153'
Purple1     = '114   0  83'
Purple2     = '204   0 154'
Purple3     = '254 128 222'
Green1      = '  0  73   0'
Green2      = '  0 191   0'
Green3      = '128 254 128'

HighTierColor   = ' 70   0   0'
MiddleTierColor = ' 70  70   0'
NormalColor     = '200 200 200'
MagicColor      = '136 136 255'
RareColor       = '255 255 119'
UniqueColor     = '175  96  37'
GemColor        = ' 27 162 155'
CurrencyColor   = '170 158 130'
DivinationCardColor = '184 218 242'
QuestItemColor  = ' 74 230  58'
LifeFlaskColor     = Red2
ManaFlaskColor     = Red2
HybridFlaskColor   = Red2
UtilityFlaskColor  = Green2
MapColor           = White
JewelColor         = MossGreen2
MapFragmentColor   = Brown3
VendorRecipeColor  = Red3
GoodAccessoryColor = Purple2
ChanceItemColor    = BluePurple3
SpecialGearColor      = Blue1
SpecialAccessoryColor = Blue1
LabyrinthItemColor = Green1
AtlasItemColor     = Brown2
OriathItemColor    = Purple3
ProphecyItemColor  = Purple2
EssenceItemColor   = BluePurple2
BreachItemsColor   = Brown1
HarbingerItemColor = MossGreen3

# Sound
HighLevelAlertSound   = '6 300'
MiddleLevelAlertSound = '3 300'
LowLevelAlertSound    = '7 300'

Valiables = {
  C: {
    show_rarity_level: 'Magic',
    show_flask_drop_level: 3,
    show_quality_flask: true,
    show_rare_equipement: true,
    show_socket_num: 4,
    show_normal_currency: true,
    show_gem: true,
  },
  B: {
    show_rarity_level: 'Rare',
    show_flask_drop_level: 30,
    show_quality_flask: true,
    show_rare_equipement: true,
    show_socket_num: 6,
    show_normal_currency: true,
    show_gem: true,
  },
  A: {
    show_rarity_level: 'Rare',
    show_flask_drop_level: 100,
    show_quality_flask: true,
    show_rare_equipement: true,
    show_socket_num: 6,
    show_normal_currency: true,
    show_gem: false,
  },
  S: {
    show_rarity_level: 'Rare',
    show_flask_drop_level: 100,
    show_quality_flask: false,
    show_rare_equipement: false,
    show_socket_num: 6,
    show_normal_currency: false,
    show_gem: false,
  }
}

################################################################################
%i(C B A S).each do |level|
  valiable = Valiables[level]
  filter "isukes_filter_#{level}_v#{PoeVersion}_#{FilterVersion}" do |f|
    # Hide Currency ############################################################
    f.group 'Hide Currency' do |g|
      unless valiable[:show_rare_equipement]
        g.element do |e|
          e.showable             = false
          e.klass                = 'Currency'
          e.base_type            = 'NormalCurrencies'
        end
      end
    end

    # Currency #################################################################
    f.group 'Currency' do |g|
      g.element 'Unique Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.set_text_color       = CurrencyColor
        e.base_type            = 'UniqueCurrencies'
        e.set_font_size        = ExtraLargeFontSize
        e.set_border_color     = UniqueColor
        e.play_alert_sound_positional = HighLevelAlertSound
      end
      g.element 'Rare Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.set_text_color       = CurrencyColor
        e.base_type            = 'RareCurrencies'
        e.set_font_size        = LargeFontSize
        e.set_border_color     = RareColor
      end
      g.element 'Magic Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.set_text_color       = CurrencyColor
        e.base_type            = 'MagicCurrencies'
        e.set_font_size        = DefaultFontSize
        e.set_border_color     = MagicColor
      end
      g.element 'Normal Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.set_text_color       = CurrencyColor
        e.base_type            = 'NormalCurrencies'
        e.set_font_size        = DefaultFontSize
      end
    end

    # Vendor Recipe ############################################################
    f.group 'Vendor Recipe' do |g|
      g.element do |e|
        e.showable = true
        e.rarity    = '= Normal'
        e.base_type = '"Stone Hammer" "Rock Breaker" "Gavel"'
        e.corrupted            = 'False'
        e.set_font_size        = SmallFontSize
        e.set_text_color       = "#{VendorRecipeColor} 200"
        e.set_border_color     = "#{VendorRecipeColor} 200"
        e.set_background_color = "#{Black} 200"
      end

      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = MiddleTierColor
        end
      end
    end

    # Special Gear #############################################################
    f.group 'Special Gear' do |g|
      g.element do |e|
        e.showable             = true
        e.base_type            = 'SpecialGears'
        e.set_background_color = SpecialGearColor
        e.set_border_color     = MagicColor
        e.set_font_size        = DefaultFontSize
        e.play_alert_sound_positional = LowLevelAlertSound
      end
    end

    # Special Accessory #############################################################
    f.group 'Special Accessory' do |g|
      g.element do |e|
        e.showable             = true
        e.base_type            = 'SpecialAccessories'
        e.set_background_color = SpecialAccessoryColor
        e.set_border_color     = UniqueColor
        e.set_font_size        = ExtraLargeFontSize
        e.play_alert_sound_positional = HighLevelAlertSound
      end
    end

    # Good Accessory ###########################################################
    f.group 'Good Accessory' do |g|
      g.element do |e|
        e.showable = true
        e.rarity         = '= Normal'
        e.base_type      = 'GoodAccessories'
        e.corrupted      = 'False'
        e.set_font_size        = SmallFontSize
        e.set_text_color       = "#{GoodAccessoryColor} 200"
        e.set_border_color     = "#{GoodAccessoryColor} 200"
        e.set_background_color = "#{Black} 200"
      end
    end

    # Chance Item ##############################################################
    f.group 'Chance Item' do |g|
      g.element do |e|
        e.showable = true
        e.rarity    = '= Normal'
        e.base_type = 'ChanceItems'
        e.corrupted = 'False'
        e.set_font_size        = SmallFontSize
        e.set_text_color       = "#{ChanceItemColor} 200"
        e.set_border_color     = "#{ChanceItemColor} 200"
        e.set_background_color = "#{Black} 200"
      end
    end

    # Hide Flask ###############################################################
    f.group 'Hide Flask' do |g|
      g.element do |e|
        e.showable             = false
        e.klass                = 'Flasks'
        e.quality              = '= 0' if valiable[:show_quality_flask]
        e.rarity               = '< Unique'
        e.drop_level           = "< #{valiable[:show_flask_drop_level]}"
      end
    end

    # Utility Flask ############################################################
    f.group 'Utility Flask' do |g|
      g.element 'Utility' do |e|
        e.showable             = true
        e.klass                = '"Utility Flasks"'
        e.set_font_size        = DefaultFontSize
        e.set_text_color       = UtilityFlaskColor
      end

      g.mixin do |m|
        m.element 'Magic' do |e|
          e.rarity               = '= Magic'
          e.set_font_size        = DefaultFontSize
          e.set_border_color     = MagicColor
        end
        m.element 'Unique' do |e|
          e.rarity               = '= Unique'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound_positional = LowLevelAlertSound
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = MiddleTierColor
        end
      end
    end

    # Flask ####################################################################
    f.group 'Flask' do |g|
      g.element 'Flask' do |e|
        e.showable             = true
        e.klass                = 'Flasks'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Life' do |e|
          e.klass                = '"Life Flasks"'
          e.set_text_color       = LifeFlaskColor
        end
        m.element 'Mana' do |e|
          e.klass                = '"Mana Flasks"'
          e.set_text_color       = ManaFlaskColor
        end
        m.element 'Hybrid' do |e|
          e.klass                = '"Hybrid Flasks"'
          e.set_text_color       = HybridFlaskColor
        end
      end
      g.mixin do |m|
        m.element 'Magic' do |e|
          e.rarity               = '= Magic'
          e.set_border_color     = MagicColor
          e.set_font_size        = DefaultFontSize
        end
        m.element 'Unique' do |e|
          e.rarity               = '= Unique'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound_positional = LowLevelAlertSound
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality = '>= 10'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Quality' do |e|
          e.quality = '> 0'
          e.set_background_color = MiddleTierColor
        end
      end
    end

    # Gem ######################################################################
    f.group 'Gem' do |g|
      g.element 'Gem' do |e|
        e.showable             = true
        e.klass                = 'Gems'
        e.set_text_color       = GemColor
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Rare' do |e|
          e.base_type            = 'RareGems'
          e.set_border_color     = RareColor
          e.set_font_size        = LargeFontSize
          e.play_alert_sound_positional = LowLevelAlertSound
        end
        m.element 'Unique' do |e|
          e.base_type            = 'UniqueGems'
          e.set_border_color     = UniqueColor
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound_positional = MiddleLevelAlertSound
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = MiddleTierColor
        end
      end
    end

    # Map ######################################################################
    f.group 'Map' do |g|
      g.element 'Map' do |e|
        e.showable             = true
        e.klass                = 'Maps'
        e.set_text_color       = MapColor
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Unique' do |e|
          e.rarity               = '= Unique'
          e.set_font_size        = ExtraLargeFontSize
        end
        m.element 'Rare' do |e|
          e.rarity               = '= Rare'
          e.set_font_size        = LargeFontSize
        end
      end
      g.mixin do |m|
        m.element 'High Tier' do |e|
          e.drop_level           = '>= 78'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Tier' do |e|
          e.drop_level           = '>= 73'
          e.set_background_color = MiddleTierColor
        end
      end
    end

    # Jewel ####################################################################
    f.group 'Jewel' do |g|
      g.element 'Jewel' do |e|
        e.showable             = true
        e.klass                = 'Jewel'
        e.set_text_color       = JewelColor
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Unique' do |e|
          e.rarity               = '= Unique'
          e.set_border_color     = UniqueColor
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound_positional = LowLevelAlertSound
        end
        m.element 'Rare' do |e|
          e.rarity               = '= Rare'
          e.set_border_color     = RareColor
          e.set_font_size        = LargeFontSize
        end
        m.element 'Magic' do |e|
          e.rarity               = '= Magic'
          e.set_border_color     = MagicColor
          e.set_font_size        = DefaultFontSize
        end
      end
    end

    # Divination ###############################################################
    f.group 'Divination' do |g|
      g.element 'Divination' do |e|
        e.showable             = true
        e.klass                = 'Divination'
        e.set_text_color       = DivinationCardColor
      end

      g.mixin do |m|
        m.element 'Unique Divination' do |e|
          e.base_type            = 'UniqueDivinations'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound_positional = HighLevelAlertSound
        end
        m.element 'Rare Divination' do |e|
          e.base_type            = 'RareDivinations'
          e.set_font_size        = LargeFontSize
          e.set_border_color     = RareColor
          e.play_alert_sound_positional = MiddleLevelAlertSound
        end
        m.element 'Magic Divination' do |e|
          e.base_type            = 'MagicDivinations'
          e.set_font_size        = DefaultFontSize
          e.set_border_color     = MagicColor
          e.play_alert_sound_positional = LowLevelAlertSound
        end
        m.element 'Normal Divination' do |e|
          e.set_font_size        = DefaultFontSize
        end
      end
    end

    # Fishing Rod ##############################################################
    f.group 'Fishing Rod' do |g|
      g.element do |e|
        e.showable             = true
        e.klass                = 'Fishing Rods'
        e.set_border_color     = UniqueColor
        e.set_font_size        = ExtraLargeFontSize
        e.play_alert_sound_positional = HighLevelAlertSound
      end
    end

    # Unique Equipment #########################################################
    f.group 'Unique Equipment' do |g|
      g.element 'Unique Equipment' do |e|
        e.showable             = true
        e.rarity               = '= Unique'
        e.klass                = 'Equipments'
      end

      g.mixin do |m|
        m.element 'Best' do |e|
          e.rarity               = '= Unique'
          e.base_type            = 'BestUniquBaseTypes'
          e.set_font_size        = ExtraLargeFontSize
          e.set_background_color = HighTierColor
          e.play_alert_sound_positional = HighLevelAlertSound
        end
        m.element 'Good' do |e|
          e.rarity               = '= Unique'
          e.base_type            = 'GoodUniquBaseTypes'
          e.set_font_size        = ExtraLargeFontSize
          e.set_background_color = MiddleTierColor
          e.play_alert_sound_positional = MiddleLevelAlertSound
        end
        m.element 'Normal' do |e|
          e.rarity               = '= Unique'
          e.set_font_size        = LargeFontSize
          e.play_alert_sound_positional = LowLevelAlertSound
        end
      end
    end

    # Accessory ################################################################
    f.group 'Accessory' do |g|
      g.element 'Accessory' do |e|
        e.showable             = true
        e.klass                = 'Accessories'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Rare' do |e|
          e.klass                = 'Amulets Rings Belts'
          e.rarity               = '= Rare'
          e.set_background_color = MiddleTierColor
        end
      end
      g.mixin do |m|
        m.element 'Good' do |e|
          e.base_type            = 'GoodAccessories'
          e.set_background_color = HighTierColor
        end
      end
    end

    # Hide Equipment ###########################################################
    f.group 'Hide Equipment' do |g|
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.sockets        = "< #{valiable[:show_socket_num]}"
        e.linked_sockets = '< 3'
        e.rarity         = "< #{valiable[:show_rarity_level]}"
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.sockets        = "< #{valiable[:show_socket_num]}"
        e.linked_sockets = '= 3'
        e.socket_group   = 'RR GG BB'
        e.rarity         = "< #{valiable[:show_rarity_level]}"
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.sockets        = "< #{valiable[:show_socket_num]}"
        e.linked_sockets = '= 4'
        e.socket_group   = 'RRR GGG BBB RRGG RRBB GGBB'
        e.rarity         = "< #{valiable[:show_rarity_level]}"
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Accessories'
        e.rarity         = "< #{valiable[:show_rarity_level]}"
      end

      unless valiable[:show_rare_equipement]
        g.element do |e|
          e.showable       = false
          e.klass          = 'Weapons Gears'
          e.sockets        = "< #{valiable[:show_socket_num]}"
          e.linked_sockets = '< 3'
          e.rarity         = '< Unique'
        end
        g.element do |e|
          e.showable       = false
          e.klass          = 'Weapons Gears'
          e.sockets        = "< #{valiable[:show_socket_num]}"
          e.linked_sockets = '= 3'
          e.socket_group   = 'RR GG BB'
          e.rarity         = '< Unique'
        end
        g.element do |e|
          e.showable       = false
          e.klass          = 'Weapons Gears'
          e.sockets        = "< #{valiable[:show_socket_num]}"
          e.linked_sockets = '= 4'
          e.socket_group   = 'RRR GGG BBB RRGG RRBB GGBB'
          e.rarity         = '< Unique'
        end
      end
    end

    # Weapon And Gear ##########################################################
    f.group 'Weapon And Gear' do |g|
      g.element 'Weapon And Gear' do |e|
        e.showable             = true
        e.klass                = 'Weapons Gears'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'High DropLevel Weapon' do |e|
          e.klass                = 'Weapons'
          e.drop_level           = '>= 69'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle DropLevel Weapon' do |e|
          e.klass                = 'Weapons'
          e.drop_level           = '>= 65'
          e.set_background_color = MiddleTierColor
        end
        m.element 'High DropLevel Gear1' do |e|
          e.klass                = '"Body Armours" "Helmets" "Shields"'
          e.drop_level           = '>= 68'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle DropLevel Gear1' do |e|
          e.klass                = '"Body Armours" "Helmets" "Shields"'
          e.drop_level           = '>= 64'
          e.set_background_color = MiddleTierColor
        end
        m.element 'High DropLevel Gear2' do |e|
          e.klass                = '"Gloves" "Boots"'
          e.drop_level           = '>= 64'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle DropLevel Gear2' do |e|
          e.klass                = '"Gloves" "Boots"'
          e.drop_level           = '>= 57'
          e.set_background_color = MiddleTierColor
        end
      end
      g.mixin do |m|
        m.element 'Linked Sockets LL' do |e|
          e.linked_sockets   = '= 6'
          e.set_font_size    = ExtraLargeFontSize
          e.set_border_color = UniqueColor
          e.play_alert_sound_positional = HighLevelAlertSound
        end
        m.element 'Linked Sockets L' do |e|
          e.linked_sockets   = '= 5'
          e.set_font_size    = ExtraLargeFontSize
          e.set_border_color = UniqueColor
          e.play_alert_sound_positional = MiddleLevelAlertSound
        end
        m.element 'Sockets L' do |e|
          e.sockets          = ">= #{valiable[:show_socket_num]}"
          e.set_font_size    = LargeFontSize
          e.set_border_color = RareColor
        end
        m.element 'Group Sockets' do |e|
          e.socket_group     = 'RGB'
          e.set_border_color = MagicColor
        end
      end
    end

    # Labyrinth Item ###########################################################
    f.group 'Labyrinth Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'LabyrinthItems'
        e.set_font_size        = LargeFontSize
        e.set_background_color = LabyrinthItemColor
      end
    end

    # Atlas Item ###############################################################
    f.group 'Atlas Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'AtlasItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = AtlasItemColor
      end
    end

    # Oriath Item ###############################################################
    f.group 'Oriath Item' do |g|
      g.element do |e|
        e.showable  = true
        e.klass = 'Pantheon Soul'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = OriathItemColor
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'OriathItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = OriathItemColor
        e.play_alert_sound_positional = LowLevelAlertSound
      end
    end

    # Prophecy Item ############################################################
    f.group 'Prophecy Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'ProphecyItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = ProphecyItemColor
      end
    end

    # Essence Item ##############################################################
    f.group 'Essence Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = EssenceItemColor
      end
    end

    # Breach Item ##############################################################
    f.group 'Breach Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'BreachItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = BreachItemsColor
      end
    end

    # Harbinger Item ##############################################################
    f.group 'Harbinger Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'HarbingerItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = HarbingerItemColor
      end
      g.element do |e|
        e.showable  = true
        e.klass = 'Piece'
        e.set_font_size        = ExtraLargeFontSize
        e.set_background_color = HarbingerItemColor
        e.set_border_color     = UniqueColor
      end
    end

    # Map Fragment #############################################################
    f.group 'Map Fragment' do |g|
      g.element 'Map Fragment' do |e|
        e.showable             = true
        e.klass                = 'Map Fragment'
        e.set_text_color       = MapFragmentColor
        e.set_border_color     = MapFragmentColor
        e.set_font_size        = LargeFontSize
      end
    end

    # Quest Item ###############################################################
    f.group 'Quest Item' do |g|
      g.element do |e|
        e.showable  = true
        e.klass = 'Quest Items'
        e.set_border_color     = QuestItemColor
        e.set_text_color       = QuestItemColor
        e.set_font_size        = LargeFontSize
      end
    end

    # Default ##################################################################
    f.group 'Default' do |g|
      g.element do |e|
        e.showable = true
        e.set_font_size        = DefaultFontSize
      end
    end
  end
end
