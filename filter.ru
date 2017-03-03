PoeVersion         = '2.6'
FilterVersion      = '2.0pre'
DefaultFontSize    = 39
LargeFontSize      = 42
ExtraLargeFontSize = 45
Red             = '255   0   0'
LightGreen      = '165 255  30'
Green           = '  0 255   0'
Blue            = '100 100 255'
Purple          = '160   0 160'
DarkRed         = ' 70   0   0'
DarkGreen       = '  0  70   0'
DarkBlue        = '  0   0  85'
BlueGray        = ' 90  95 120'
Brown           = '139  69  19'
DarkPurple      = ' 50  10  35'
DarkYellow      = ' 70  70   0'
DarkOrange      = '175  65  10'
Black           = '  0   0   0'
White           = '255 255 255'
NormalColor     = '200 200 200'
MagicColor      = '136 136 255'
RareColor       = '255 255 119'
UniqueColor     = '175  96  37'
GemColor        = ' 27 162 155'
CurrencyColor   = '170 158 130'
DivinationCardColor = '184 218 242'
LifeFlaskColor    = Red
ManaFlaskColor    = Red
HybridFlaskColor  = Red
UtilityFlaskColor = Green
MapColor          = White
JewelColor        = LightGreen
HighLevelAlertSound = '6 300'
MiddleLevelAlertSound = '3 300'

Valiables = {
  C: {
    show_rarity_level: 'Magic',
    show_flask_drop_level: 3,
    show_quality_flask: true,
    show_rare_equipement: true,
    show_socket_num: 4,
  },
  B: {
    show_rarity_level: 'Rare',
    show_flask_drop_level: 30,
    show_quality_flask: true,
    show_rare_equipement: true,
    show_socket_num: 6,
  },
  A: {
    show_rarity_level: 'Rare',
    show_flask_drop_level: 100,
    show_quality_flask: true,
    show_rare_equipement: true,
    show_socket_num: 6,
  },
  S: {
    show_rarity_level: 'Rare',
    show_flask_drop_level: 100,
    show_quality_flask: false,
    show_rare_equipement: false,
    show_socket_num: 6,
  }
}

################################################################################
%i(C B A S).each do |level|
  valiable = Valiables[level]
  filter "isukes_filter_#{level}_v#{PoeVersion}_#{FilterVersion}" do |f|
    # Currency #################################################################
    f.group 'Currency' do |g|
      g.element 'UniqueCurrencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'UniqueCurrencies'
        e.set_font_size        = ExtraLargeFontSize
        e.set_border_color     = UniqueColor
        e.play_alert_sound     = HighLevelAlertSound
      end
      g.element 'RareCurrencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'RareCurrencies'
        e.set_font_size        = LargeFontSize
        e.set_border_color     = RareColor
      end
      g.element 'Magic Currencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'MagicCurrencies'
        e.set_font_size        = DefaultFontSize
        e.set_border_color     = MagicColor
      end
      g.element 'Normal Currencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
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
        e.set_font_size        = DefaultFontSize
        e.set_background_color = DarkPurple
      end
    end

    # Special Equipment ########################################################
    f.group 'Special Equipment' do |g|
      g.element do |e|
        e.showable = true
        e.base_type = 'SpecialEquipments'
        e.set_border_color = UniqueColor
        e.set_font_size    = ExtraLargeFontSize
        e.play_alert_sound = MiddleLevelAlertSound
      end
    end

    # Good Accessory ###########################################################
    f.group 'Good Accessory' do |g|
      g.element do |e|
        e.showable = true
        e.rarity         = '= Normal'
        e.base_type      = 'GoodAccessories'
        e.corrupted      = 'False'
        e.set_text_color       = "#{Purple} 200"
        e.set_border_color     = "#{Purple} 200"
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
        e.set_text_color       = "#{BlueGray} 200"
        e.set_border_color     = "#{BlueGray} 200"
        e.set_background_color = "#{Black} 200"
      end
    end

    # Good ES Armour ###########################################################
    f.group 'Good ES Armour' do |g|
      g.element do |e|
        e.showable = true
        e.rarity         = '= Normal'
        e.base_type      = 'GoodESArmours'
        e.corrupted      = 'False'
        e.set_text_color       = "#{DarkOrange} 200"
        e.set_border_color     = "#{DarkOrange} 200"
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
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = DarkRed
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = DarkYellow
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
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality = '>= 10'
          e.set_background_color = DarkRed
        end
        m.element 'Middle Quality' do |e|
          e.quality = '> 0'
          e.set_background_color = DarkYellow
        end
      end
    end

    # Gem ######################################################################
    f.group 'Gem' do |g|
      g.element 'Gem' do |e|
        e.showable             = true
        e.klass                = 'Gems'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Rare Only' do |e|
          e.base_type            = 'DropOnlyGems'
          e.set_border_color     = RareColor
          e.set_font_size        = LargeFontSize
        end
        m.element 'Unique Only' do |e|
          e.base_type            = 'DropOnlyGems'
          e.set_border_color     = UniqueColor
          e.set_font_size        = ExtraLargeFontSize
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = DarkRed
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = DarkYellow
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
          e.set_background_color = DarkRed
        end
        m.element 'Middle Tier' do |e|
          e.drop_level           = '>= 73'
          e.set_background_color = DarkYellow
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
      g.element 'Unique Divination' do |e|
        e.showable             = true
        e.klass                = 'Divination'
        e.base_type            = 'UniqueDivinations'
        e.set_font_size        = ExtraLargeFontSize
        e.set_border_color     = UniqueColor
        e.play_alert_sound     = MiddleLevelAlertSound
      end
      g.element 'Rare Divination' do |e|
        e.showable             = true
        e.klass                = 'Divination'
        e.base_type            = 'RareDivinations'
        e.set_font_size        = LargeFontSize
        e.set_border_color     = RareColor
      end
      g.element 'Magic Divination' do |e|
        e.showable             = true
        e.klass                = 'Divination'
        e.base_type            = 'MagicDivinations'
        e.set_font_size        = DefaultFontSize
        e.set_border_color     = MagicColor
      end
      g.element 'Normal Divination' do |e|
        e.showable             = true
        e.klass                = 'Divination'
        e.set_font_size        = DefaultFontSize
      end
    end

    # Hide Equipment ###########################################################
    f.group 'Hide Equipment' do |g|
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.sockets        = "< #{valiable[:show_socket_num]}"
        e.linked_sockets = '< 3'
        if valiable[:show_rare_equipement]
          e.rarity       = "< #{valiable[:show_rarity_level]}"
        else
          e.drop_level   = '<= 57'
        end
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.sockets        = "< #{valiable[:show_socket_num]}"
        e.linked_sockets = '= 3'
        e.socket_group   = 'RR GG BB'
        if valiable[:show_rare_equipement]
          e.rarity       = "< #{valiable[:show_rarity_level]}"
        else
          e.drop_level   = '<= 57'
        end
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.sockets        = "< #{valiable[:show_socket_num]}"
        e.linked_sockets = '= 4'
        e.socket_group   = 'RRR GGG BBB RRGG RRBB GGBB'
        if valiable[:show_rare_equipement]
          e.rarity       = "< #{valiable[:show_rarity_level]}"
        else
          e.drop_level   = '<= 57'
        end
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Accessories'
        e.rarity         = "< #{valiable[:show_rarity_level]}"
      end
    end

    # Equipment ################################################################
    f.group 'Equipment' do |g|
      g.element 'Equipment' do |e|
        e.showable             = true
        e.klass                = 'Equipments'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        g.element 'Unique' do |e|
          e.rarity               = '= Unique'
          e.set_font_size        = ExtraLargeFontSize
        end
        g.element 'Rare' do |e|
          e.rarity               = '= Rare'
          e.set_font_size        = LargeFontSize
        end
      end
      g.mixin do |m|
        m.element 'High DropLevel Weapon' do |e|
          e.klass                = 'Weapons'
          e.drop_level           = '> 69'
          e.set_background_color = DarkRed
        end
        m.element 'Middle DropLevel Weapon' do |e|
          e.klass                = 'Weapons'
          e.drop_level           = '> 65'
          e.set_background_color = DarkYellow
        end
        m.element 'High DropLevel Gear1' do |e|
          e.klass                = '"Body Armours" "Helmets" "Shields"'
          e.drop_level           = '> 68'
          e.set_background_color = DarkRed
        end
        m.element 'Middle DropLevel Gear1' do |e|
          e.klass                = '"Body Armours" "Helmets" "Shields"'
          e.drop_level           = '> 64'
          e.set_background_color = DarkYellow
        end
        m.element 'High DropLevel Gear2' do |e|
          e.klass                = '"Gloves" "Boots"'
          e.drop_level           = '> 64'
          e.set_background_color = DarkRed
        end
        m.element 'Middle DropLevel Gear2' do |e|
          e.klass                = '"Gloves" "Boots"'
          e.drop_level           = '> 57'
          e.set_background_color = DarkYellow
        end
      end
      g.mixin do |m|
        m.element 'Linked Sockets LL' do |e|
          e.linked_sockets   = '= 6'
          e.set_font_size    = ExtraLargeFontSize
          e.set_border_color = UniqueColor
          e.play_alert_sound = HighLevelAlertSound
        end
        m.element 'Linked Sockets L' do |e|
          e.linked_sockets   = '= 5'
          e.set_font_size    = ExtraLargeFontSize
          e.set_border_color = UniqueColor
          e.play_alert_sound = MiddleLevelAlertSound
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
        e.set_background_color = DarkGreen
      end
    end

    # Atlas Item ###############################################################
    f.group 'Atlas Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'AtlasItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = DarkOrange
      end
    end

    # Prophecy Item ############################################################
    f.group 'Prophecy Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'ProphecyItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = DarkBlue
      end
    end

    # Essence Item ##############################################################
    f.group 'Essence Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = Purple
      end
    end

    # Breach Item ##############################################################
    f.group 'Breach Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'BreachItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = Brown
      end
    end

    # Legacy Item ##############################################################
    f.group 'Legacy Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'LegacyItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = Brown
      end
    end

    # Quest Item ###############################################################
    f.group 'Quest Item' do |g|
      g.element do |e|
        e.showable  = true
        e.klass = 'Quest Items'
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
