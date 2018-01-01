# Verson
PoeVersion         = '3.1'
FilterVersion      = '4.2'

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
ChiselRecipeColor  = Red3
ChaosRecipeColor   = Blue3
RegalRecipeColor   = Blue3
ChanceItemColor    = BluePurple3
FarmEquipmentBorderColor = Purple2
AccessoryColor          = Red3
GoodAccessoryColor      = Red2
GoodDPSWeponColor       = Green1
GoodCriticalDaggerColor = Green1
GoodSTRArmourColor      = MossGreen1
GoodDEXArmourColor      = MossGreen1
GoodINTArmourColor      = MossGreen1
SpecialGearColor        = Blue1
SpecialAccessoryColor   = Blue1

LabyrinthItemColor = Green1
AtlasItemColor     = Brown2
OriathItemColor    = BluePurple3
ShaperItemColor    = BluePurple2
ElderItemColor     = BluePurple1

ProphecyItemColor  = Purple2
EssenceItemColor   = BluePurple2
BreachItemsColor   = Brown1
HarbingerItemColor = MossGreen3
AbyssItemColor     = Green2

# Alpha
DefaultAlpha = 255
ThinAlpha    = 200

# Sound
HighLevelAlertSound   =  '6 300'
MiddleLevelAlertSound =  '3 300'
LowLevelAlertSound    =  '7 300'
TrivialAlertSound     =  '9 170'
ErrorAlertSound       = '12 300'

Variables = {
  C: {
    show_flask_drop_level: 3,
    show_quality_flask: true,
    show_magic_equipement: true,
    show_rare_equipement: true,
    show_linked_num: 3,
    show_socket_num: 4,
    show_normal_currency: true,
    show_gem: true,
    show_good_base_item_level: 0,
  },
  B: {
    show_flask_drop_level: 30,
    show_quality_flask: true,
    show_magic_equipement: false,
    show_rare_equipement: true,
    show_linked_num: 4,
    show_socket_num: 5,
    show_normal_currency: true,
    show_gem: true,
    show_good_base_item_level: 30,
  },
  A: {
    show_flask_drop_level: 60,
    show_quality_flask: true,
    show_magic_equipement: false,
    show_rare_equipement: true,
    show_linked_num: false,
    show_socket_num: false,
    show_normal_currency: true,
    show_gem: false,
    show_good_base_item_level: 63,
  },
  S: {
    show_flask_drop_level: 100,
    show_quality_flask: false,
    show_magic_equipement: false,
    show_rare_equipement: false,
    show_linked_num: false,
    show_socket_num: false,
    show_normal_currency: false,
    show_gem: false,
    show_good_base_item_level: 84,
  }
}

################################################################################
%i(C B A S).each do |level|
  variable = Variables[level]
  filter "isukes_filter_#{level}_v#{PoeVersion}_#{FilterVersion}" do |f|
    f.comment "isuke's filter"
    f.comment "PoE Version: #{PoeVersion}"
    f.comment "Filter Version: #{FilterVersion}"
    f.comment "Filter Level: #{level}"

    # Hide Currency ############################################################
    unless variable[:show_normal_currency]
      f.group 'Hide Currency' do |g|
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
        e.play_alert_sound     = HighLevelAlertSound
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
          e.rarity               = 'Magic'
          e.set_font_size        = DefaultFontSize
          e.set_border_color     = MagicColor
        end
        m.element 'Unique' do |e|
          e.rarity               = 'Unique'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound     = LowLevelAlertSound
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
        e.showable             = false
        e.klass                = '"Life Flasks" "Mana Flasks" "Hybrid Flasks"'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Life' do |e|
          e.showable             = false
          e.klass                = '"Life Flasks"'
          e.set_text_color       = LifeFlaskColor
        end
        m.element 'Mana' do |e|
          e.showable             = false
          e.klass                = '"Mana Flasks"'
          e.set_text_color       = ManaFlaskColor
        end
        m.element 'Hybrid' do |e|
          e.showable             = false
          e.klass                = '"Hybrid Flasks"'
          e.set_text_color       = HybridFlaskColor
        end
      end

      g.mixin do |m|
        m.element 'Magic' do |e|
          e.showable             = false
          e.rarity               = 'Magic'
          e.set_border_color     = MagicColor
          e.set_font_size        = DefaultFontSize
        end
        m.element 'Unique' do |e|
          e.showable             = true
          e.rarity               = 'Unique'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound     = LowLevelAlertSound
        end
      end

      g.mixin do |m|
        m.element 'Drop Level' do |e|
          e.showable             = true
          e.drop_level           = ">= #{variable[:show_flask_drop_level]}"
        end
      end

      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.showable             = variable[:show_quality_flask]
          e.quality              = '>= 10'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Quality' do |e|
          e.showable             = variable[:show_quality_flask]
          e.quality              = '> 0'
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
        e.set_color_alpha      = ThinAlpha
        e.set_font_size        = SmallFontSize
      end

      g.mixin do |m|
        m.element 'Rare' do |e|
          e.base_type            = 'RareGems'
          e.set_border_color     = RareColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = LargeFontSize
          e.play_alert_sound     = LowLevelAlertSound
        end
        m.element 'Unique' do |e|
          e.base_type            = 'UniqueGems'
          e.set_border_color     = UniqueColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = MiddleLevelAlertSound
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.quality              = '>= 10'
          e.set_background_color = HighTierColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = DefaultFontSize
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = MiddleTierColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = DefaultFontSize
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
          e.rarity               = 'Unique'
          e.set_font_size        = ExtraLargeFontSize
        end
        m.element 'Rare' do |e|
          e.rarity               = 'Rare'
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
        m.element 'Abyss' do |m|
          m.klass                = '"Abyss Jewel"'
          m.set_background_color = AbyssItemColor
        end
      end

      g.mixin do |m|
        m.element 'Unique' do |e|
          e.rarity               = 'Unique'
          e.set_border_color     = UniqueColor
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = LowLevelAlertSound
        end
        m.element 'Rare' do |e|
          e.rarity               = 'Rare'
          e.set_border_color     = RareColor
          e.set_font_size        = LargeFontSize
        end
        m.element 'Magic' do |e|
          e.rarity               = 'Magic'
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
        m.element 'Unique' do |e|
          e.base_type            = 'UniqueDivinations'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound     = HighLevelAlertSound
        end
        m.element 'Rare' do |e|
          e.base_type            = 'RareDivinations'
          e.set_font_size        = LargeFontSize
          e.set_border_color     = RareColor
          e.play_alert_sound     = MiddleLevelAlertSound
        end
        m.element 'Magic' do |e|
          e.base_type            = 'MagicDivinations'
          e.set_font_size        = DefaultFontSize
          e.set_border_color     = MagicColor
          e.play_alert_sound     = LowLevelAlertSound
        end
        m.element 'Normal' do |e|
          e.set_font_size        = DefaultFontSize
        end
      end
    end

    # Stacked Deck #############################################################
    f.group 'Stacked Deck' do |g|
      g.element 'Stacked Deck' do |e|
        e.showable             = true
        e.base_type            = 'Stacked Deck'
        e.set_font_size        = ExtraLargeFontSize
        e.set_text_color       = DivinationCardColor
        e.set_border_color     = DivinationCardColor
        e.play_alert_sound     = HighLevelAlertSound
      end
    end

    # Fishing Rod ##############################################################
    f.group 'Fishing Rod' do |g|
      g.element do |e|
        e.showable             = true
        e.klass                = '"Fishing Rods"'
        e.set_border_color     = UniqueColor
        e.set_font_size        = ExtraLargeFontSize
        e.play_alert_sound     = HighLevelAlertSound
      end
    end

    # Unique Equipment #########################################################
    f.group 'Unique Equipment' do |g|
      g.element 'Unique Equipment' do |e|
        e.showable             = true
        e.rarity               = 'Unique'
        e.klass                = 'Equipments'
      end

      g.mixin do |m|
        m.element 'Best' do |e|
          e.rarity               = 'Unique'
          e.base_type            = 'BestUniquBaseTypes'
          e.set_font_size        = ExtraLargeFontSize
          e.set_background_color = HighTierColor
          e.play_alert_sound_positional = HighLevelAlertSound
        end
        m.element 'Good' do |e|
          e.rarity               = 'Unique'
          e.base_type            = 'GoodUniquBaseTypes'
          e.set_font_size        = ExtraLargeFontSize
          e.set_background_color = MiddleTierColor
          e.play_alert_sound_positional = MiddleLevelAlertSound
        end
        m.element 'Normal' do |e|
          e.rarity               = 'Unique'
          e.set_font_size        = LargeFontSize
          e.play_alert_sound_positional = LowLevelAlertSound
        end
      end
    end

    # Chance Item ##############################################################
    f.group 'Chance Item' do |g|
      g.element do |e|
        e.showable = true
        e.rarity    = 'Normal'
        e.base_type = 'ChanceItems'
        e.corrupted = 'False'
        e.set_font_size        = SmallFontSize
        e.set_text_color       = ChanceItemColor
        e.set_border_color     = ChanceItemColor
        e.set_background_color = Black
        e.set_color_alpha      = ThinAlpha
      end
    end

    # Chisel Recipe ############################################################
    f.group 'Chisel Recipe' do |g|
      g.element do |e|
        e.showable = true
        e.rarity    = 'Normal'
        e.base_type = '"Stone Hammer" "Rock Breaker" "Gavel"'
        e.corrupted            = 'False'
        e.set_font_size        = SmallFontSize
        e.set_text_color       = ChiselRecipeColor
        e.set_border_color     = ChiselRecipeColor
        e.set_background_color = Black
        e.set_color_alpha      = ThinAlpha
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

    # Accessory ################################################################
    f.group 'Accessory' do |g|
      g.element 'Accessory' do |e|
        e.showable             = false
        e.klass                = 'Accessories'
      end

      g.mixin do |m|
        m.element 'Normal' do |e|
          e.showable             = false
          e.rarity               = 'Normal'
          e.set_font_size        = SmallFontSize
          e.set_color_alpha      = ThinAlpha
        end
        m.element 'Magic' do |e|
          e.showable             = variable[:show_magic_equipement]
          e.rarity               = 'Magic'
          e.set_font_size        = SmallFontSize
          e.set_color_alpha      = ThinAlpha
        end
        m.element 'Rare' do |e|
          e.showable             = variable[:show_rare_equipement]
          e.rarity               = 'Rare'
          e.set_font_size        = DefaultFontSize
          e.set_color_alpha      = DefaultAlpha
        end
      end

      g.mixin do |m|
        m.element 'Breach' do |e|
          e.showable             = true
          e.klass                = 'Rings'
          e.base_type            = '"Breach Ring"'
          e.set_background_color = BreachItemsColor
          e.set_color_alpha      = DefaultAlpha
        end

        m.element 'Abyss' do |e|
          e.showable             = true
          e.klass                = 'Belts'
          e.base_type            = '"Stygian Vise"'
          e.set_background_color = AbyssItemColor
          e.set_color_alpha      = DefaultAlpha
        end

        m.element 'Special' do |e|
          e.showable             = true
          e.base_type            = 'SpecialAccessories'
          e.set_background_color = SpecialAccessoryColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = HighLevelAlertSound
        end

        m.element 'Good Accessories' do |e|
          e.showable             = true
          e.base_type            = 'GoodAccessories'
          unless variable[:show_magic_equipement]
            e.rarity               = 'Rare'
          end
          e.set_background_color = GoodAccessoryColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = DefaultFontSize
        end

        m.element 'Not Good Accessories' do |e|
          e.showable             = true
          e.base_type            = 'NotGoodAccessories'
          e.rarity               = 'Rare'
          e.set_background_color = AccessoryColor
          e.set_color_alpha      = ThinAlpha
          e.set_font_size        = SmallFontSize
        end

        m.element 'Shaper' do |e|
          e.showable             = true
          e.shaper_item          = true
          e.set_background_color = ShaperItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = HighLevelAlertSound
        end

        m.element 'Elder' do |e|
          e.showable             = true
          e.elder_item           = true
          e.set_background_color = ElderItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = HighLevelAlertSound
        end
      end
    end

    # Weapon And Gear ##########################################################
    f.group 'Weapon And Gear' do |g|
      g.element 'Weapon And Gear' do |e|
        e.showable             = false
        e.klass                = 'Weapons Gears'
        e.set_font_size        = DefaultFontSize
      end

      g.mixin do |m|
        m.element 'Normal' do |e|
          e.showable             = false
          e.rarity               = 'Normal'
          e.set_font_size        = SmallFontSize
          e.set_color_alpha      = ThinAlpha
        end
        m.element 'Magic' do |e|
          e.showable             = variable[:show_magic_equipement]
          e.rarity               = 'Magic'
          e.set_font_size        = SmallFontSize
          e.set_color_alpha      = ThinAlpha
        end
        m.element 'Rare' do |e|
          e.showable             = variable[:show_rare_equipement]
          e.rarity               = 'Rare'
          e.set_font_size        = DefaultFontSize
          e.set_color_alpha      = DefaultAlpha
        end
      end

      g.mixin do |m|
        unless variable[:show_rare_equipement]
          m.element 'Regal Recipe1' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = '"Gloves" "Boots" "Body Armours" "Helmets" "Claws" "Daggers" "Wands"'
            e.item_level           = '>= 75'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = SmallFontSize
            e.set_text_color       = RegalRecipeColor
            e.set_border_color     = RegalRecipeColor
            e.set_background_color = HighTierColor
            e.set_color_alpha      = ThinAlpha
          end
          m.element 'Regal Recipe2' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = '"Shields"'
            e.height               = '<= 2'
            e.width                = '<= 2'
            e.item_level           = '>= 75'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = SmallFontSize
            e.set_text_color       = RegalRecipeColor
            e.set_border_color     = RegalRecipeColor
            e.set_background_color = HighTierColor
            e.set_color_alpha      = ThinAlpha
          end
          m.element 'Chaos Recipe1' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = '"Gloves" "Boots" "Body Armours" "Helmets" "Claws" "Daggers" "Wands"'
            e.item_level           = '>= 60'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = SmallFontSize
            e.set_text_color       = ChaosRecipeColor
            e.set_border_color     = ChaosRecipeColor
            e.set_background_color = MiddleTierColor
            e.set_color_alpha      = ThinAlpha
          end
          m.element 'Chaos Recipe2' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = '"Shields"'
            e.height               = '<= 2'
            e.width                = '<= 2'
            e.item_level           = '>= 60'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = SmallFontSize
            e.set_text_color       = ChaosRecipeColor
            e.set_border_color     = ChaosRecipeColor
            e.set_background_color = MiddleTierColor
            e.set_color_alpha      = ThinAlpha
          end
        end
        m.element 'Good DPS Wepon' do |e|
          e.showable             = true
          e.item_level           = ">= #{variable[:show_good_base_item_level]}"
          e.base_type            = 'GoodDPSWepons'
          e.set_background_color = GoodDPSWeponColor
        end
        m.element 'Good Critical Dagger' do |e|
          e.showable             = true
          e.item_level           = ">= #{variable[:show_good_base_item_level]}"
          e.base_type            = 'GoodCriticalDaggers'
          e.set_background_color = GoodCriticalDaggerColor
        end
        m.element 'Good STR Armour' do |e|
          e.showable             = true
          e.item_level           = ">= #{variable[:show_good_base_item_level]}"
          e.base_type            = 'GoodSTRArmours'
          e.set_background_color = GoodSTRArmourColor
        end
        m.element 'Good DEX Armour' do |e|
          e.showable             = true
          e.item_level           = ">= #{variable[:show_good_base_item_level]}"
          e.base_type            = 'GoodDEXArmours'
          e.set_background_color = GoodDEXArmourColor
        end
        m.element 'Good INT Armour' do |e|
          e.showable             = true
          e.item_level           = ">= #{variable[:show_good_base_item_level]}"
          e.base_type            = 'GoodINTArmours GoodWands GoodSceptres'
          e.set_background_color = GoodINTArmourColor
        end
        m.element 'Special' do |e|
          e.showable             = true
          e.base_type            = 'SpecialGears'
          e.set_font_size        = ExtraLargeFontSize
          e.set_color_alpha      = DefaultAlpha
          e.set_background_color = SpecialGearColor
          e.play_alert_sound     = LowLevelAlertSound
        end
      end

      g.mixin do |m|
        m.element 'Linked Sockets LL' do |e|
          e.showable             = true
          e.linked_sockets       = '= 6'
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = HighLevelAlertSound
        end
        m.element 'Linked Sockets L' do |e|
          e.showable             = true
          e.linked_sockets       = "= 5"
          e.set_font_size        = ExtraLargeFontSize
          e.set_border_color     = UniqueColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = MiddleLevelAlertSound
        end
        m.element 'Sockets LL' do |e|
          e.showable             = true
          e.sockets              = "= 6"
          e.set_font_size        = LargeFontSize
          e.set_border_color     = RareColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = LowLevelAlertSound
        end
        m.element 'RGB 1' do |e|
          e.showable             = true
          e.socket_group         = 'RGB'
          unless variable[:show_large_rgb_equipement]
            e.height               = '<= 3'
            e.width                = '<= 1'
          end
          e.set_font_size        = DefaultFontSize
          e.set_border_color     = MagicColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = TrivialAlertSound
        end
        m.element 'RGB 2' do |e|
          e.showable             = true
          e.socket_group         = 'RGB'
          unless variable[:show_large_rgb_equipement]
            e.height               = '<= 2'
            e.width                = '<= 2'
          end
          e.set_font_size        = DefaultFontSize
          e.set_border_color     = MagicColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = TrivialAlertSound
        end
        if variable[:show_linked_num]
          m.element 'Linked Sockets L' do |e|
            e.showable             = true
            e.linked_sockets       = ">= #{variable[:show_linked_num]}"
            e.set_font_size        = LargeFontSize
            e.set_border_color     = FarmEquipmentBorderColor
          end
        end
        if variable[:show_socket_num]
          m.element 'Sockets L' do |e|
            e.showable             = true
            e.sockets              = ">= #{variable[:show_socket_num]}"
            e.set_font_size        = LargeFontSize
            e.set_border_color     = FarmEquipmentBorderColor
          end
        end
      end

      g.mixin do |m|
        m.element 'Shaper' do |e|
          e.shaper_item          = true
          e.set_background_color = ShaperItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = HighLevelAlertSound
        end
        m.element 'Elder' do |e|
          e.elder_item           = true
          e.set_background_color = ElderItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = ExtraLargeFontSize
          e.play_alert_sound     = HighLevelAlertSound
        end
      end
    end

    # Labyrinth Item ###########################################################
    f.group 'Labyrinth Item' do |g|
      g.element do |e|
        e.showable             = true
        e.base_type            = 'LabyrinthItems'
        e.set_font_size        = LargeFontSize
        e.set_background_color = LabyrinthItemColor
      end
    end

    # Atlas Item ###############################################################
    f.group 'Atlas Item' do |g|
      g.element do |e|
        e.showable             = true
        e.base_type            = 'AtlasItems'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = AtlasItemColor
      end
    end

    # Oriath Item ##############################################################
    f.group 'Oriath Item' do |g|
      g.element do |e|
        e.showable             = true
        e.klass                = 'Pantheon Soul'
        e.set_font_size        = DefaultFontSize
        e.set_background_color = OriathItemColor
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = 'OriathItems'
        e.set_font_size        = LargeFontSize
        e.set_background_color = OriathItemColor
        e.play_alert_sound     = MiddleLevelAlertSound
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

    # Essence Item #############################################################
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

    # Harbinger Item ###########################################################
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

    # Error ####################################################################
    f.group 'Error' do |g|
      g.element do |e|
        e.showable = true
        e.set_font_size        = DefaultFontSize
        e.play_alert_sound     = ErrorAlertSound
      end
    end
  end
end
