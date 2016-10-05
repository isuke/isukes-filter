PoeVersion         = '2.4'
FilterVersion      = '1.1'
DefaultFontSize    = 39
LargeFontSize      = 42
ExtraLargeFontSize = 45
Red             = '255   0   0'
Green           = '  0 255   0'
Blue            = '100 100 255'
Purple          = '160   0 160'
DarkRed         = ' 70   0   0'
DarkGreen       = '  0  70   0'
DarkBlue        = '  0   0  85'
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

Valiables = {
  low: {
    hide_rarity_level: 'Normal',
    small_flask_size: '"Small"',
    large_flask_size: '"Medium" "Large" "Greater" "Grand" "Giant" "Colossal" "Sacred" "Hallowed" "Sanctified" "Divine" "Eternal"',
    show_socket_num: 4,
  },
  middle: {
    hide_rarity_level: 'Magic',
    small_flask_size: '"Small" "Medium" "Large" "Greater" "Grand"',
    large_flask_size: '"Giant" "Colossal" "Sacred" "Hallowed" "Sanctified" "Divine" "Eternal"',
    show_socket_num: 5,
  },
  high: {
    hide_rarity_level: 'Magic',
    small_flask_size: '"Small" "Medium" "Large" "Greater" "Grand" "Giant" "Colossal" "Sacred" "Hallowed" "Sanctified" "Divine" "Eternal"',
    large_flask_size: '',
    show_socket_num: 6,
  }
}

################################################################################
%i(low middle high).each do |level|
  filter "#{level}_v#{PoeVersion}_#{FilterVersion}" do |f|
    # Currency #################################################################
    f.group 'Currency' do |g|
      g.element 'Normal Currencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'NormalCurrencies'
        e.set_font_size        = DefaultFontSize
      end
      g.element 'Magic Currencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'MagicCurrencies'
        e.set_font_size        = DefaultFontSize
        e.set_border_color     = MagicColor
      end
      g.element 'RareCurrencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'RareCurrencies'
        e.set_font_size        = LargeFontSize
        e.set_border_color     = RareColor
      end
      g.element 'UniqueCurrencies' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'UniqueCurrencies'
        e.set_font_size        = ExtraLargeFontSize
        e.set_border_color     = UniqueColor
      end
    end

    # Hide Flask ###############################################################
    f.group 'Hide Flask' do |g|
      g.element do |e|
        e.showable             = false
        e.klass                = 'Flasks'
        e.quality              = '= 0'
        e.rarity               = '< Unique'
        e.base_type            = Valiables[level][:small_flask_size]
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
        m.element 'Drop Only' do |e|
          e.base_type            = 'DropOnlyGems'
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

    # Vendor Recipe ###########################################################
    f.group 'Vendor Recipe' do |g|
      g.element do |e|
        e.showable = true
        e.rarity    = '= Normal'
        e.base_type = '"Stone Hammer" "Rock Breaker" "Gavel"'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = DarkPurple
      end
    end

    # Special Equipment ########################################################
    f.group 'Special Equipment' do |g|
      g.element do |e|
        e.showable = true
        e.base_type = '"Sacrificial Garb" "Two-Toned Boots" "Spiked Gloves" "Gripped Gloves" "Fingerless Silk Gloves"'
        e.set_border_color = UniqueColor
        e.set_font_size    = ExtraLargeFontSize
      end
    end

    # Good Accessories #########################################################
    f.group 'Good Accessories' do |g|
      g.element do |e|
        e.showable = true
        e.rarity         = '= Normal'
        e.klass          = '"Belts" "Amulet" "Rings"'
        e.base_type      = '"Diamond Ring" "Crystal Belt"'
        e.set_text_color       = "#{MagicColor} 200"
        e.set_border_color     = "#{MagicColor} 200"
        e.set_background_color = "#{Black} 200"
      end
    end

    # Normal Accessories #######################################################
    f.group 'Normal Accessories' do |g|
      g.element do |e|
        e.showable = true
        e.rarity         = '= Normal'
        e.klass          = '"Belts" "Amulet" "Rings"'
        e.set_text_color       = "#{NormalColor} 120"
        e.set_border_color     = "#{NormalColor} 120"
        e.set_background_color = "#{Black} 120"
      end
    end

    # Hide Equipment ###########################################################
    f.group 'Hide Equipment' do |g|
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.rarity         = "<= #{Valiables[level][:hide_rarity_level]}"
        e.sockets        = "< #{Valiables[level][:show_socket_num]}"
        e.linked_sockets = '< 3'
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.rarity         = "<= #{Valiables[level][:hide_rarity_level]}"
        e.sockets        = "< #{Valiables[level][:show_socket_num]}"
        e.linked_sockets = '= 3'
        e.socket_group   = 'RR GG BB'
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Weapons Gears'
        e.rarity         = "<= #{Valiables[level][:hide_rarity_level]}"
        e.sockets        = "< #{Valiables[level][:show_socket_num]}"
        e.linked_sockets = '= 4'
        e.socket_group   = 'RRR GGG BBB RRGG RRBB GGBB'
      end
      g.element do |e|
        e.showable       = false
        e.klass          = 'Accessories'
        e.rarity         = "<= #{Valiables[level][:hide_rarity_level]}"
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
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = DarkRed
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = DarkYellow
        end
      end
      g.mixin do |m|
        m.element 'Linked Sockets L' do |e|
          e.linked_sockets   = '>= 5'
          e.set_font_size    = ExtraLargeFontSize
          e.set_border_color = UniqueColor
        end
        m.element 'Sockets L' do |e|
          e.sockets          = ">= #{Valiables[level][:show_socket_num]}"
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
        e.base_type = "AtlasItems"
        e.set_font_size        = DefaultFontSize
        e.set_background_color = DarkOrange
      end
    end

    # Prophecy Item ############################################################
    f.group 'Prophecy Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = '"Silver Coin" "Prophecy"'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = DarkBlue
      end
    end

    # League Item ##############################################################
    f.group 'League Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = '"Perandus Coin" "Essence" "Remnant of Corruption"'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = Purple
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
