# Verson
PoeVersion         = '3.4'
FilterVersion      = '6.0'

# Font Size
ExtraLargeFontSize = 45
LargeFontSize      = 40
DefaultFontSize    = 37
SmallFontSize      = 30
ExtraSmallFontSize = 28

# Color
Black       = '  0   0   0'
White       = '255 255 255'
Red         = '255   0   0'
Pink1       = '190 120 120'
Pink2       = '205 160 160'
Pink3       = '220 180 180'
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
UniqueColor     = '175  96  37'
RareColor       = '255 255 119'
MagicColor      = '136 136 255'
NormalColor     = '200 200 200'
GemColor        = ' 27 162 155'
CurrencyColor   = '170 158 130'
DivinationCardColor = '184 218 242'
QuestItemColor  = ' 74 230  58'

LifeFlaskColor     = Pink2
ManaFlaskColor     = Pink2
HybridFlaskColor   = Pink3
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

TalismanItemColor  = Green3
ProphecyItemColor  = Purple2
EssenceItemColor   = BluePurple2
BreachItemsColor   = Brown1
HarbingerItemColor = MossGreen3
AbyssItemColor     = Green2
BestiaryItemColor  = Brown3
IncursionItemColor = Red2
DelveItemColor     = Blue1

# Alpha
DefaultAlpha = 255
ThinAlpha    = 200

# sound
MuteAlertSound  = ' 1   0'
ErrorAlertSound = '12 300'

# MinimapIconShape
StackableItemMinimapIconShape  = 'Circle'
FragmentItemMinimapIconShape   = 'Circle'
GemItemMinimapIconShape        = 'Diamond'
AccessoryItemMinimapIconShape  = 'Diamond'
MapItemMinimapIconShape        = 'Hexagon'
EquipmentsItemMinimapIconShape = 'Square'
LeagueItemMinimapIconShape     = 'Star'
QuestItemMinimapIconShape      = 'Triangle'
ErrorMinimapIconShape          = 'Triangle'

# valuable
SublimeFontSize  = ExtraLargeFontSize
LoftyFontSize    = LargeFontSize
PreciousFontSize = DefaultFontSize
TrivialFontSize  = SmallFontSize
CheapFontSize    = ExtraSmallFontSize

SublimeColor  = Red
LoftyColor    = UniqueColor
PreciousColor = RareColor
TrivialColor  = MagicColor
CheapColor    = NormalColor

SublimeAlpha  = DefaultAlpha
LoftyAlpha    = DefaultAlpha
PreciousAlpha = DefaultAlpha
TrivialAlpha  = DefaultAlpha
CheapAlpha    = ThinAlpha

SublimeAlertSound  =  '6 300'
LoftyAlertSound    =  '3 300'
PreciousAlertSound =  '7 300'
TrivialAlertSound  =  '9 170'
CheapAlertSound    = MuteAlertSound

SublimeMinimapIconSize  = 0
LoftyMinimapIconSize    = 1
PreciousMinimapIconSize = 2

Variables = {
  C: {
    show_chaos_recipe: true,
    show_flask_drop_level: 3,
    show_flask_quality: 0,
    show_gem: true,
    show_good_base_equipment: true,
    show_good_base_item_level: 0,
    show_linked_num: 3,
    show_trivial_currencies: true,
    show_magic_equipment: true,
    show_magic_jewel: true,
    show_map_tier: 1,
    show_normal_accessory: true,
    show_cheap_currencies: true,
    show_cheap_divination: true,
    show_rare_equipment: true,
    show_socket_num: 4,
    show_utility_flask_quality: 0,
  },
  B: {
    show_chaos_recipe: true,
    show_flask_drop_level: 30,
    show_flask_quality: 0,
    show_gem: true,
    show_good_base_equipment: true,
    show_good_base_item_level: 30,
    show_linked_num: 4,
    show_trivial_currencies: true,
    show_magic_equipment: false,
    show_magic_jewel: true,
    show_map_tier: 1,
    show_normal_accessory: false,
    show_cheap_currencies: true,
    show_cheap_divination: true,
    show_rare_equipment: true,
    show_socket_num: 5,
    show_utility_flask_quality: 0,
  },
  A: {
    show_chaos_recipe: true,
    show_flask_drop_level: 60,
    show_flask_quality: 0,
    show_gem: false,
    show_good_base_equipment: true,
    show_good_base_item_level: 63,
    show_linked_num: false,
    show_trivial_currencies: true,
    show_magic_equipment: false,
    show_magic_jewel: true,
    show_map_tier: 1,
    show_normal_accessory: false,
    show_cheap_currencies: true,
    show_cheap_divination: false,
    show_rare_equipment: true,
    show_socket_num: false,
    show_utility_flask_quality: 0,
  },
  S: {
    show_chaos_recipe: true,
    show_flask_drop_level: 100,
    show_flask_quality: 20,
    show_gem: false,
    show_good_base_equipment: true,
    show_good_base_item_level: 84,
    show_linked_num: false,
    show_trivial_currencies: true,
    show_magic_equipment: false,
    show_magic_jewel: false,
    show_map_tier: 3,
    show_normal_accessory: false,
    show_cheap_currencies: false,
    show_cheap_divination: false,
    show_rare_equipment: false,
    show_socket_num: false,
    show_utility_flask_quality: 10,
  },
  SS: {
    show_chaos_recipe: false,
    show_flask_drop_level: 100,
    show_flask_quality: 20,
    show_gem: false,
    show_good_base_equipment: false,
    show_good_base_item_level: 84,
    show_linked_num: false,
    show_trivial_currencies: false,
    show_magic_equipment: false,
    show_magic_jewel: false,
    show_map_tier: 9,
    show_normal_accessory: false,
    show_cheap_currencies: false,
    show_cheap_divination: false,
    show_rare_equipment: false,
    show_socket_num: false,
    show_utility_flask_quality: 20,
  }
}
# Utils ########################################################################
def set_sublime element, color1, minimap_icon_color, minimap_icon_shape
  element.set_font_size        = SublimeFontSize
  element.set_text_color       = color1
  element.set_border_color     = SublimeColor
  element.set_background_color = SublimeColor
  element.set_color_alpha      = SublimeAlpha
  element.play_alert_sound     = SublimeAlertSound
  element.play_effect          = minimap_icon_color if minimap_icon_color
  element.minimap_icon         = "#{SublimeMinimapIconSize} #{minimap_icon_color} #{minimap_icon_shape}" if minimap_icon_color && minimap_icon_shape
end

def set_lofty element, color1, minimap_icon_color, minimap_icon_shape
  element.set_font_size        = LoftyFontSize
  element.set_text_color       = color1
  # element.set_border_color     = NONE
  element.set_background_color = LoftyColor
  element.set_color_alpha      = LoftyAlpha
  element.play_alert_sound     = LoftyAlertSound
  element.play_effect          = minimap_icon_color if minimap_icon_color
  element.minimap_icon         = "#{LoftyMinimapIconSize} #{minimap_icon_color} #{minimap_icon_shape}" if minimap_icon_color && minimap_icon_shape
end

def set_precious element, color1, minimap_icon_color, minimap_icon_shape
  element.set_font_size        = PreciousFontSize
  element.set_text_color       = color1
  # element.set_border_color     = NONE
  element.set_background_color = PreciousColor
  element.set_color_alpha      = PreciousAlpha
  element.play_alert_sound     = PreciousAlertSound
  element.play_effect          = "#{minimap_icon_color} Temp" if minimap_icon_color
  element.minimap_icon         = "#{PreciousMinimapIconSize} #{minimap_icon_color} #{minimap_icon_shape}" if minimap_icon_color && minimap_icon_shape
end

def set_trivial element, color1, _minimap_icon_color, _minimap_icon_shape
  element.set_font_size        = TrivialFontSize
  element.set_text_color       = color1
  # element.set_border_color     = NONE
  element.set_background_color = TrivialColor
  element.set_color_alpha      = TrivialAlpha
  element.play_alert_sound     = TrivialAlertSound
  # element.play_effect          = minimap_icon_color if minimap_icon_color
  # element.minimap_icon         = "#{SublimeMinimapIconSize} #{minimap_icon_color} #{minimap_icon_shape}" if minimap_icon_color && minimap_icon_shape
end

def set_cheap element, color1, _minimap_icon_color, _minimap_icon_shape
  element.set_font_size        = CheapFontSize
  element.set_text_color       = color1
  # element.set_border_color     = NONE
  element.set_background_color = CheapColor
  element.set_color_alpha      = CheapAlpha
  element.play_alert_sound     = CheapAlertSound
  # element.play_effect          = minimap_icon_color if minimap_icon_color
  # element.minimap_icon         = "#{SublimeMinimapIconSize} #{minimap_icon_color} #{minimap_icon_shape}" if minimap_icon_color && minimap_icon_shape
end


################################################################################
Variables.each do |level, variable|
  filter "isukes_filter_#{level}_v#{PoeVersion}_#{FilterVersion}" do |f|
    f.comment "isuke's filter"
    f.comment "PoE Version: #{PoeVersion}"
    f.comment "Filter Version: #{FilterVersion}"
    f.comment "Filter Level: #{level}"

    # Hide Currency ############################################################
    unless variable[:show_cheap_currencies]
      f.group 'Hide Cheap Currencies' do |g|
        g.element do |e|
          e.showable             = false
          e.klass                = 'Currency'
          e.base_type            = 'CheapCurrencies'
          e.stack_size           = '< 15'
        end
        g.element do |e|
          e.showable             = false
          e.klass                = 'Currency'
          e.base_type            = 'CheapCurrencyShards'
        end
      end
    end

    unless variable[:show_trivial_currencies]
      f.group 'Hide Trivial Currencies' do |g|
        g.element do |e|
          e.showable             = false
          e.klass                = 'Currency'
          e.base_type            = 'TrivialCurrencies'
          e.stack_size           = '< 15'
        end
        g.element do |e|
          e.showable             = false
          e.klass                = 'Currency'
          e.base_type            = 'TrivialCurrencyShards'
        end
      end
    end

    # Currency #################################################################
    f.group 'Currency' do |g|
      g.element 'Sublime Currency Shard' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'SublimeCurrencyShards'
        set_sublime e, CurrencyColor, 'Red', StackableItemMinimapIconShape
        # e.set_font_size        = SublimeFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = SublimeColor
        # e.set_background_color = SublimeColor
        # e.play_alert_sound     = SublimeAlertSound
        # e.play_effect          = 'Red'
        # e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{StackableItemMinimapIconShape}"
      end
      g.element 'Sublime Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'SublimeCurrencies'
        set_sublime e, CurrencyColor, 'Red', StackableItemMinimapIconShape
        # e.set_font_size        = SublimeFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = SublimeColor
        # e.set_background_color = SublimeColor
        # e.play_alert_sound     = SublimeAlertSound
        # e.play_effect          = 'Red'
        # e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{StackableItemMinimapIconShape}"
      end

      g.element 'Lofty Currency Shard' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'LoftyCurrencyShards'
        set_lofty e, CurrencyColor, 'Yellow', StackableItemMinimapIconShape
        # e.set_font_size        = LoftyFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = LoftyColor
        # e.play_alert_sound     = LoftyAlertSound
        # e.play_effect          = 'Yellow'
        # e.minimap_icon         = "#{SublimeMinimapIconSize} Yellow #{StackableItemMinimapIconShape}"
      end
      g.element 'Lofty Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'LoftyCurrencies'
        set_lofty e, CurrencyColor, 'Yellow', StackableItemMinimapIconShape
        # e.set_font_size        = SublimeFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = LoftyColor
        # e.play_alert_sound     = LoftyAlertSound
        # e.play_effect          = 'Yellow'
        # e.minimap_icon         = "#{SublimeMinimapIconSize} Yellow #{StackableItemMinimapIconShape}"
      end

      g.element 'Precious Currency Shard' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'PreciousCurrencyShards'
        set_precious e, CurrencyColor, 'Yellow', StackableItemMinimapIconShape
        # e.set_font_size        = PreciousFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = PreciousColor
        # e.play_effect          = 'Yellow Temp'
        # e.minimap_icon         = "#{LoftyMinimapIconSize} Yellow #{StackableItemMinimapIconShape}"
      end
      g.element 'Precious Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'PreciousCurrencies'
        set_precious e, CurrencyColor, 'Yellow', StackableItemMinimapIconShape
        # e.set_font_size        = LoftyFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = PreciousColor
        # e.play_effect          = 'Yellow Temp'
        # e.minimap_icon         = "#{LoftyMinimapIconSize} Yellow #{StackableItemMinimapIconShape}"
      end

      g.element 'Trivial Currency Shard' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'TrivialCurrencyShards'
        set_trivial e, CurrencyColor, 'Blue', StackableItemMinimapIconShape
        # e.set_font_size        = TrivialFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = TrivialColor
        # e.play_effect          = 'Blue Temp'
        # e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
      end
      g.element 'Trivial Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'TrivialCurrencies'
        set_trivial e, CurrencyColor, 'Blue', StackableItemMinimapIconShape
        # e.set_font_size        = PreciousFontSize
        # e.set_text_color       = CurrencyColor
        # e.set_border_color     = TrivialColor
        # e.play_effect          = 'Blue Temp'
        # e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
      end

      g.element 'Cheap Currency Shard' do |e|
        e.showable             = false
        e.klass                = 'Currency'
        e.base_type            = 'CheapCurrencyShards'
        set_cheap e, CurrencyColor, 'White', StackableItemMinimapIconShape
      end
      g.element 'Cheap Currency' do |e|
        e.showable             = true
        e.klass                = 'Currency'
        e.base_type            = 'CheapCurrencies'
        set_cheap e, CurrencyColor, 'White', StackableItemMinimapIconShape
        # e.set_font_size        = PreciousFontSize
        # e.set_text_color       = CurrencyColor
      end
    end

    # Hide Flask ###############################################################
    f.group 'Hide Utility Flask' do |g|
      g.element do |e|
        e.showable             = false
        e.klass                = %q("Utility Flasks")
        e.quality              = "< #{variable[:show_utility_flask_quality]}"
        e.rarity               = '< Unique'
      end
    end

    f.group 'Hide Flask' do |g|
      g.element do |e|
        e.showable             = false
        e.klass                = %q("Life Flasks" "Mana Flasks" "Hybrid Flasks")
        e.quality              = "< #{variable[:show_flask_quality]}"
        e.rarity               = '< Unique'
      end
    end

    # Utility Flask ############################################################
    f.group 'Utility Flask' do |g|
      g.element 'Utility' do |e|
        e.showable             = true
        e.klass                = %q("Utility Flasks")
        e.set_font_size        = PreciousFontSize
        e.set_text_color       = UtilityFlaskColor
      end

      g.mixin do |m|
        m.element 'Magic' do |e|
          e.rarity               = 'Magic'
          e.set_font_size        = PreciousFontSize
          e.set_border_color     = MagicColor
        end
        m.element 'Unique' do |e|
          e.rarity               = 'Unique'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound     = PreciousAlertSound
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
        e.klass                = %q("Life Flasks" "Mana Flasks" "Hybrid Flasks")
        e.set_font_size        = PreciousFontSize
      end

      g.mixin do |m|
        m.element 'Life' do |e|
          e.showable             = false
          e.klass                = %q("Life Flasks")
          e.set_text_color       = LifeFlaskColor
        end
        m.element 'Mana' do |e|
          e.showable             = false
          e.klass                = %q("Mana Flasks")
          e.set_text_color       = ManaFlaskColor
        end
        m.element 'Hybrid' do |e|
          e.showable             = false
          e.klass                = %q("Hybrid Flasks")
          e.set_text_color       = HybridFlaskColor
        end
      end

      g.mixin do |m|
        m.element 'Magic' do |e|
          e.showable             = false
          e.rarity               = 'Magic'
          e.set_font_size        = PreciousFontSize
          e.set_border_color     = MagicColor
        end
        m.element 'Unique' do |e|
          e.showable             = true
          e.rarity               = 'Unique'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound     = PreciousAlertSound
        end
      end

      g.mixin do |m|
        m.element 'Divine, Eternal' do |e|
          e.showable             = false
          e.drop_level           = ">= 60"
          e.set_border_color     = FarmEquipmentBorderColor
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
          e.quality              = '>= 10'
          e.set_background_color = HighTierColor
        end
        m.element 'Middle Quality' do |e|
          e.quality              = '> 0'
          e.set_background_color = MiddleTierColor
        end
      end
    end

    # Gem ######################################################################
    f.group 'Gem' do |g|
      g.element 'Gem' do |e|
        e.showable             = variable[:show_gem]
        e.klass                = 'Gems'
        e.set_font_size        = TrivialFontSize
        e.set_text_color       = GemColor
        e.set_color_alpha      = ThinAlpha
      end

      g.mixin do |m|
        m.element 'LoftyGems' do |e|
          e.showable             = true
          e.base_type            = 'LoftyGems'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = LoftyColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = LoftyAlertSound
          e.minimap_icon         = "#{SublimeMinimapIconSize} Green #{GemItemMinimapIconShape}"
        end
        m.element 'Precious' do |e|
          e.showable             = true
          e.base_type            = 'PreciousGems'
          e.set_font_size        = LoftyFontSize
          e.set_border_color     = PreciousColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = PreciousAlertSound
        end
      end
      g.mixin do |m|
        m.element 'High Quality' do |e|
          e.showable             = true
          e.quality              = '>= 10'
          e.set_font_size        = PreciousFontSize
          e.set_background_color = HighTierColor
          e.set_color_alpha      = DefaultAlpha
          e.minimap_icon         = "#{LoftyMinimapIconSize} Green #{GemItemMinimapIconShape}"
        end
        m.element 'Middle Quality' do |e|
          e.showable             = true
          e.quality              = '> 0'
          e.set_font_size        = PreciousFontSize
          e.set_background_color = MiddleTierColor
          e.set_color_alpha      = DefaultAlpha
          e.minimap_icon         = "#{LoftyMinimapIconSize} Green #{GemItemMinimapIconShape}"
        end
      end
      g.mixin do |m|
        m.element 'High Level' do |e|
          e.showable             = true
          e.gem_level            = '>= 18'
          e.set_font_size        = PreciousFontSize
          e.set_background_color = HighTierColor
          e.set_color_alpha      = DefaultAlpha
          e.minimap_icon         = "#{LoftyMinimapIconSize} Green #{GemItemMinimapIconShape}"
        end
      end
    end

    # Hide Map #################################################################
    f.group 'Hide Map' do |g|
      g.element do |e|
        e.showable             = false
        e.klass                = 'Maps'
        e.map_tier             = "< #{variable[:show_map_tier]}"
        e.rarity               = '< Unique'
      end
    end

    # Map ######################################################################
    f.group 'Map' do |g|
      g.element 'Map' do |e|
        e.showable             = true
        e.klass                = 'Maps'
        e.set_font_size        = PreciousFontSize
        e.set_text_color       = MapColor
      end

      g.mixin do |m|
        m.element 'Unique' do |e|
          e.rarity               = 'Unique'
          e.set_font_size        = SublimeFontSize
          e.play_alert_sound     = SublimeAlertSound
        end
        m.element 'Rare' do |e|
          e.rarity               = 'Rare'
          e.set_font_size        = LoftyFontSize
        end
      end
      g.mixin do |m|
        m.element 'Very High Tier' do |e|
          e.map_tier             = '>= 15'
          e.set_background_color = HighTierColor
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Red'
          e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{MapItemMinimapIconShape}"
        end
        m.element 'High Tier' do |e|
          e.map_tier             = '>= 11'
          e.set_background_color = HighTierColor
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Red Temp'
          e.minimap_icon         = "#{LoftyMinimapIconSize} Red #{MapItemMinimapIconShape}"
        end
        m.element 'Middle Tier' do |e|
          e.map_tier             = '>= 6'
          e.set_background_color = MiddleTierColor
          e.play_alert_sound     = PreciousAlertSound
          e.minimap_icon         = "#{PreciousMinimapIconSize} Red #{MapItemMinimapIconShape}"
        end
        m.element 'Low Tier' do |e|
          e.map_tier             = '< 6'
          e.play_alert_sound     = TrivialAlertSound
        end
      end
    end

    # Jewel ####################################################################
    f.group 'Jewel' do |g|
      g.element 'Jewel' do |e|
        e.klass                = 'Jewel'
        e.set_font_size        = PreciousFontSize
        e.set_text_color       = JewelColor
      end

      g.mixin do |m|
        m.element 'Abyss' do |m|
          m.klass                = %q("Abyss Jewel")
          m.set_background_color = AbyssItemColor
        end
      end

      g.mixin do |m|
        m.element 'Unique' do |e|
          e.showable             = true
          e.rarity               = 'Unique'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = UniqueColor
        end
        m.element 'Rare' do |e|
          e.showable             = true
          e.rarity               = 'Rare'
          e.set_font_size        = LoftyFontSize
          e.set_border_color     = RareColor
        end
        m.element 'Magic' do |e|
          e.showable             = variable[:show_magic_jewel]
          e.rarity               = 'Magic'
          e.set_font_size        = PreciousFontSize
          e.set_border_color     = MagicColor
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
        # m.element 'New' do |e|
        #   e.base_type            = 'NewDivinations'
        #   e.set_font_size        = LoftyFontSize
        #   e.set_border_color     = FarmEquipmentBorderColor
        #   e.play_alert_sound     = PreciousAlertSound
        #   e.play_effect          = 'Blue'
        #   e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
        # end
        m.element 'Sublime' do |e|
          e.base_type            = 'SublimeDivinations'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = SublimeColor
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Blue'
          e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
        end
        m.element 'Lofty' do |e|
          e.base_type            = 'LoftyDivinations'
          e.set_font_size        = LoftyFontSize
          e.set_border_color     = LoftyColor
          e.play_alert_sound     = LoftyAlertSound
          e.play_effect          = 'Blue Temp'
          e.minimap_icon         = "#{LoftyMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
        end
        m.element 'Precious' do |e|
          e.base_type            = 'PreciousDivinations'
          e.set_font_size        = PreciousFontSize
          e.set_border_color     = PreciousColor
          e.play_alert_sound     = PreciousAlertSound
          e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
        end
        m.element 'Cheap' do |e|
          e.base_type            = 'CheapDivinations'
          if variable[:show_cheap_divination]
            e.set_font_size        = TrivialFontSize
            e.set_color_alpha      = ThinAlpha
          else
            e.showable             = false
          end
        end
        m.element 'Trivial' do |e|
          e.set_font_size        = PreciousFontSize
        end
      end
    end

    # Stacked Deck #############################################################
    f.group 'Stacked Deck' do |g|
      g.element 'Stacked Deck' do |e|
        e.showable             = true
        e.base_type            = 'Stacked Deck'
        e.set_font_size        = SublimeFontSize
        e.set_text_color       = DivinationCardColor
        e.set_border_color     = DivinationCardColor
        e.play_alert_sound     = SublimeAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{StackableItemMinimapIconShape}"
      end
    end

    # Fishing Rod ##############################################################
    f.group 'Fishing Rod' do |g|
      g.element do |e|
        e.showable             = true
        e.klass                = %q("Fishing Rods")
        e.set_font_size        = SublimeFontSize
        e.set_border_color     = UniqueColor
        e.play_alert_sound     = SublimeAlertSound
        e.play_effect          = 'Brown'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Brown #{EquipmentsItemMinimapIconShape}"
      end
    end

    # Talisman Item ############################################################
    f.group 'Talisman Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'TalismanItems1'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = TalismanItemColor
        e.minimap_icon         = "#{PreciousMinimapIconSize} Green #{AccessoryItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'TalismanItems2'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = TalismanItemColor
        e.minimap_icon         = "#{PreciousMinimapIconSize} Green #{AccessoryItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'TalismanItems3'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = TalismanItemColor
        e.minimap_icon         = "#{LoftyMinimapIconSize} Green #{AccessoryItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'TalismanItems4'
        e.set_font_size        = SublimeFontSize
        e.set_background_color = TalismanItemColor
        e.minimap_icon         = "#{SublimeMinimapIconSize} Green #{AccessoryItemMinimapIconShape}"
      end

      g.mixin do |m|
        m.element 'Unique' do |e|
          e.rarity               = 'Unique'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = UniqueColor
          e.play_alert_sound     = PreciousAlertSound
        end
        m.element 'Rare' do |e|
          e.rarity               = 'Rare'
          e.set_border_color     = RareColor
          e.set_font_size        = LoftyFontSize
        end
        m.element 'Magic' do |e|
          e.rarity               = 'Magic'
          e.set_border_color     = MagicColor
          e.set_font_size        = PreciousFontSize
        end
      end
    end

    # Unique Equipment #########################################################
    # f.group 'Unique Equipment' do |g|
    #   g.element 'Unique Equipment' do |e|
    #     e.showable             = true
    #     e.rarity               = 'Unique'
    #     e.klass                = 'Equipments'
    #   end

    #   g.mixin do |m|
    #     m.element 'Best' do |e|
    #       e.rarity               = 'Unique'
    #       e.base_type            = 'BestUniquBaseTypes'
    #       e.set_font_size        = SublimeFontSize
    #       e.set_background_color = HighTierColor
    #       e.play_alert_sound_positional = HighLevelAlertSound
    #       e.play_effect          = 'Brown Temp'
    #     end
    #     m.element 'Good' do |e|
    #       e.rarity               = 'Unique'
    #       e.base_type            = 'GoodUniquBaseTypes'
    #       e.set_font_size        = SublimeFontSize
    #       e.set_background_color = MiddleTierColor
    #       e.play_alert_sound_positional = MiddleLevelAlertSound
    #     end
    #     m.element 'Normal' do |e|
    #       e.rarity               = 'Unique'
    #       e.set_font_size        = LoftyFontSize
    #       e.play_alert_sound_positional = LowLevelAlertSound
    #     end
    #   end
    # end

    # Chance Item ##############################################################
    # f.group 'Chance Item' do |g|
    #   g.element do |e|
    #     e.showable = true
    #     e.rarity    = 'Normal'
    #     e.base_type = 'ChanceItems'
    #     e.corrupted = 'False'
    #     e.set_font_size        = TrivialFontSize
    #     e.set_text_color       = ChanceItemColor
    #     e.set_border_color     = ChanceItemColor
    #     e.set_background_color = Black
    #     e.set_color_alpha      = ThinAlpha
    #   end
    # end

    # Chisel Recipe ############################################################
    f.group 'Chisel Recipe' do |g|
      g.element do |e|
        e.showable = true
        e.rarity    = 'Normal'
        e.base_type = %q("Stone Hammer" "Rock Breaker" "Gavel")
        e.corrupted            = 'False'
        e.set_font_size        = TrivialFontSize
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
        e.disable_drop_sound   = true
      end

      g.mixin do |m|
        m.element 'Normal' do |e|
          e.showable             = variable[:show_normal_accessory]
          e.rarity               = 'Normal'
          e.set_font_size        = TrivialFontSize
          e.set_color_alpha      = ThinAlpha
          if variable[:show_normal_accessory]
            e.play_alert_sound     = TrivialAlertSound
            e.disable_drop_sound   = false
          end
        end
        m.element 'Magic' do |e|
          e.showable             = variable[:show_magic_equipment]
          e.rarity               = 'Magic'
          e.set_font_size        = TrivialFontSize
          e.set_color_alpha      = ThinAlpha
          if variable[:show_magic_equipment]
            e.play_alert_sound     = TrivialAlertSound
            e.disable_drop_sound   = false
          end
        end
        m.element 'Rare' do |e|
          e.showable             = variable[:show_rare_equipment]
          e.rarity               = 'Rare'
          e.set_font_size        = PreciousFontSize
          e.set_color_alpha      = DefaultAlpha
          if variable[:show_rare_equipment]
            e.play_alert_sound     = PreciousAlertSound
            e.disable_drop_sound   = false
          end
        end
      end

      g.mixin do |m|
        m.element 'Breach' do |e|
          e.showable             = true
          e.klass                = 'Rings'
          e.base_type            = %q("Breach Ring")
          e.set_background_color = BreachItemsColor
          e.set_color_alpha      = DefaultAlpha
        end

        m.element 'Abyss' do |e|
          e.showable             = true
          e.klass                = 'Belts'
          e.base_type            = %q("Stygian Vise")
          e.set_background_color = AbyssItemColor
          e.set_color_alpha      = DefaultAlpha
        end

        #
        # TODO
        #
        # m.element 'Special' do |e|
        #   e.showable             = true
        #   e.base_type            = 'SpecialAccessories'
        #   e.set_font_size        = SublimeFontSize
        #   e.set_background_color = SpecialAccessoryColor
        #   e.set_color_alpha      = DefaultAlpha
        #   e.play_alert_sound     = SublimeAlertSound
        #   e.play_effect          = 'White'
        #   e.minimap_icon         = "#{SublimeMinimapIconSize} White #{AccessoryItemMinimapIconShape}"
        # end

        # m.element 'Sublime' do |e|
        #   e.showable             = variable[:show_rare_equipment] || variable[:show_chaos_recipe]
        #   e.base_type            = 'SublimeAccessories'
        #   unless variable[:show_magic_equipment]
        #     e.rarity               = 'Rare'
        #   end
        #   e.set_font_size        = PreciousFontSize
        #   e.set_background_color = GoodAccessoryColor
        #   e.set_color_alpha      = DefaultAlpha
        #   e.minimap_icon         = "#{LoftyMinimapIconSize} White #{AccessoryItemMinimapIconShape}" if variable[:show_rare_equipment] || variable[:show_chaos_recipe]
        # end

        # m.element 'Trivial' do |e|
        #   e.showable             = variable[:show_rare_equipment] || variable[:show_chaos_recipe]
        #   e.base_type            = 'TrivialAccessories'
        #   e.rarity               = 'Rare'
        #   e.set_font_size        = TrivialFontSize
        #   e.set_background_color = AccessoryColor
        #   e.set_color_alpha      = ThinAlpha
        #   e.minimap_icon         = "#{PreciousMinimapIconSize} White #{AccessoryItemMinimapIconShape}" if variable[:show_rare_equipment] || variable[:show_chaos_recipe]
        # end

        m.element 'Shaper' do |e|
          e.showable             = true
          e.shaper_item          = true
          e.set_font_size        = SublimeFontSize
          e.set_background_color = ShaperItemColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Blue'
          e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{AccessoryItemMinimapIconShape}"
        end

        m.element 'Elder' do |e|
          e.showable             = true
          e.elder_item           = true
          e.set_font_size        = SublimeFontSize
          e.set_background_color = ElderItemColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Blue'
          e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{AccessoryItemMinimapIconShape}"
        end
      end
    end

    # Weapon And Gear ##########################################################
    f.group 'Weapon And Gear' do |g|
      g.element 'Weapon And Gear' do |e|
        e.showable             = false
        e.klass                = 'Weapons Gears'
        e.set_font_size        = PreciousFontSize
      end

      g.mixin do |m|
        m.element 'Normal' do |e|
          e.showable             = false
          e.rarity               = 'Normal'
          e.set_font_size        = TrivialFontSize
          e.set_color_alpha      = ThinAlpha
        end
        m.element 'Magic' do |e|
          e.showable             = variable[:show_magic_equipment]
          e.rarity               = 'Magic'
          e.set_font_size        = TrivialFontSize
          e.set_color_alpha      = ThinAlpha
        end
        m.element 'Rare' do |e|
          e.showable             = variable[:show_rare_equipment]
          e.rarity               = 'Rare'
          e.set_font_size        = PreciousFontSize
          e.set_color_alpha      = DefaultAlpha
        end
      end

      g.mixin do |m|
        if ! variable[:show_rare_equipment] && variable[:show_chaos_recipe]
          m.element 'Regal Recipe1' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = %q("Gloves" "Boots" "Body Armours" "Helmets" "Claws" "Daggers" "Wands")
            e.item_level           = '>= 75'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = TrivialFontSize
            e.set_text_color       = RegalRecipeColor
            e.set_border_color     = RegalRecipeColor
            e.set_background_color = HighTierColor
            e.set_color_alpha      = ThinAlpha
          end
          m.element 'Regal Recipe2' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = %q("Shields")
            e.height               = '<= 2'
            e.width                = '<= 2'
            e.item_level           = '>= 75'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = TrivialFontSize
            e.set_text_color       = RegalRecipeColor
            e.set_border_color     = RegalRecipeColor
            e.set_background_color = HighTierColor
            e.set_color_alpha      = ThinAlpha
          end
          m.element 'Chaos Recipe1' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = %q("Gloves" "Boots" "Body Armours" "Helmets" "Claws" "Daggers" "Wands")
            e.item_level           = '>= 60'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = TrivialFontSize
            e.set_text_color       = ChaosRecipeColor
            e.set_border_color     = ChaosRecipeColor
            e.set_background_color = MiddleTierColor
            e.set_color_alpha      = ThinAlpha
          end
          m.element 'Chaos Recipe2' do |e|
            e.showable             = true
            e.rarity               = 'Rare'
            e.klass                = %q("Shields")
            e.height               = '<= 2'
            e.width                = '<= 2'
            e.item_level           = '>= 60'
            e.sockets              = "< 6"
            e.linked_sockets       = '< 5'
            e.set_font_size        = TrivialFontSize
            e.set_text_color       = ChaosRecipeColor
            e.set_border_color     = ChaosRecipeColor
            e.set_background_color = MiddleTierColor
            e.set_color_alpha      = ThinAlpha
          end
        end

        if variable[:show_good_base_equipment]
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
        end

        m.element 'Sublime' do |e|
          e.showable             = true
          e.base_type            = 'SublimeGears'
          e.set_font_size        = SublimeFontSize
          e.set_color_alpha      = DefaultAlpha
          e.set_background_color = SublimeColor
          e.play_alert_sound     = PreciousAlertSound
        end

        m.element 'Lofty' do |e|
          e.showable             = true
          e.base_type            = 'LoftyGears'
          e.set_font_size        = SublimeFontSize
          e.set_color_alpha      = DefaultAlpha
          e.set_background_color = LoftyColor
          e.play_alert_sound     = PreciousAlertSound
        end
      end

      g.mixin do |m|
        m.element 'Linked Sockets LL' do |e|
          e.showable             = true
          e.linked_sockets       = '= 6'
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = SublimeColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'White'
          e.minimap_icon         = "#{SublimeMinimapIconSize} White #{EquipmentsItemMinimapIconShape}"
        end
        m.element 'Linked Sockets L' do |e|
          e.showable             = true
          e.linked_sockets       = "= 5"
          e.set_font_size        = SublimeFontSize
          e.set_border_color     = LoftyColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = LoftyAlertSound
          e.minimap_icon         = "#{SublimeMinimapIconSize} White #{EquipmentsItemMinimapIconShape}"
        end
        m.element 'Sockets LL' do |e|
          e.showable             = true
          e.sockets              = "= 6"
          e.set_font_size        = LoftyFontSize
          e.set_border_color     = PreciousColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = PreciousAlertSound
          e.minimap_icon         = "#{LoftyMinimapIconSize} White #{EquipmentsItemMinimapIconShape}"
        end
        m.element 'RGB 1' do |e|
          e.showable             = true
          e.socket_group         = 'RGB'
          unless variable[:show_large_rgb_equipment]
            e.height               = '<= 3'
            e.width                = '<= 1'
          end
          e.set_font_size        = PreciousFontSize
          e.set_border_color     = TrivialColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = TrivialAlertSound
          e.minimap_icon         = "#{PreciousMinimapIconSize} White #{EquipmentsItemMinimapIconShape}"
        end
        m.element 'RGB 2' do |e|
          e.showable             = true
          e.socket_group         = 'RGB'
          unless variable[:show_large_rgb_equipment]
            e.height               = '<= 2'
            e.width                = '<= 2'
          end
          e.set_font_size        = PreciousFontSize
          e.set_border_color     = TrivialColor
          e.set_color_alpha      = DefaultAlpha
          e.play_alert_sound     = TrivialAlertSound
          e.minimap_icon         = "#{PreciousMinimapIconSize} White #{EquipmentsItemMinimapIconShape}"
        end
        if variable[:show_linked_num]
          m.element 'Linked Sockets L' do |e|
            e.showable             = true
            e.linked_sockets       = ">= #{variable[:show_linked_num]}"
            e.set_font_size        = LoftyFontSize
            e.set_border_color     = FarmEquipmentBorderColor
          end
        end
        if variable[:show_socket_num]
          m.element 'Sockets L' do |e|
            e.showable             = true
            e.sockets              = ">= #{variable[:show_socket_num]}"
            e.set_font_size        = LoftyFontSize
            e.set_border_color     = FarmEquipmentBorderColor
          end
        end
      end

      g.mixin do |m|
        m.element 'Shaper' do |e|
          e.shaper_item          = true
          e.set_background_color = ShaperItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = SublimeFontSize
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Blue Temp'
        end
        m.element 'Elder' do |e|
          e.elder_item           = true
          e.set_background_color = ElderItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = SublimeFontSize
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Blue Temp'
        end
        m.element 'Incursion' do |e|
          e.has_explicit_mod     = 'IncursionMods'
          e.set_background_color = IncursionItemColor
          e.set_color_alpha      = DefaultAlpha
          e.set_font_size        = SublimeFontSize
          e.play_alert_sound     = SublimeAlertSound
          e.play_effect          = 'Red Temp'
          e.minimap_icon         = "#{LoftyMinimapIconSize} Red #{EquipmentsItemMinimapIconShape}"
        end
      end
    end

    # Labyrinth Item ###########################################################
    f.group 'Labyrinth Item' do |g|
      g.element do |e|
        e.showable             = true
        e.base_type            = 'LabyrinthItems'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = LabyrinthItemColor
        e.play_effect          = 'Green Temp'
        e.minimap_icon         = "#{LoftyMinimapIconSize} Green #{LeagueItemMinimapIconShape}"
      end
    end

    # Atlas Item ###############################################################
    f.group 'Atlas Item' do |g|
      g.element do |e|
        e.showable             = true
        e.base_type            = %q("Shaper's Orb")
        e.set_font_size        = PreciousFontSize
        e.set_background_color = AtlasItemColor
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = %q("Cartographer's Seal")
        e.set_font_size        = PreciousFontSize
        e.set_background_color = AtlasItemColor
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = %q("Apprentice Cartographer's Sextant")
        e.set_font_size        = PreciousFontSize
        e.set_border_color     = MagicColor
        e.set_background_color = AtlasItemColor
        e.minimap_icon         = "#{PreciousMinimapIconSize} Red #{StackableItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = %q("Journeyman Cartographer's Sextant")
        e.set_font_size        = LoftyFontSize
        e.set_border_color     = RareColor
        e.set_background_color = AtlasItemColor
        e.play_effect          = 'Red Temp'
        e.minimap_icon         = "#{LoftyMinimapIconSize} Red #{StackableItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = %q("Master Cartographer's Sextant")
        e.set_font_size        = SublimeFontSize
        e.set_background_color = AtlasItemColor
        e.set_border_color     = UniqueColor
        e.play_alert_sound     = SublimeAlertSound
        e.play_effect          = 'Red'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{StackableItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = %q("Timeworn Reliquary Key")
        e.set_font_size        = SublimeFontSize
        e.set_background_color = AtlasItemColor
        e.play_alert_sound     = SublimeAlertSound
        e.play_effect          = 'Red'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{StackableItemMinimapIconShape}"
      end
    end

    # Oriath Item ##############################################################
    f.group 'Oriath Item' do |g|
      g.element do |e|
        e.showable             = true
        e.klass                = %q("Pantheon Soul")
        e.set_font_size        = PreciousFontSize
        e.set_background_color = OriathItemColor
      end
      g.element do |e|
        e.showable             = true
        e.base_type            = 'OriathItems'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = OriathItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Red'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{FragmentItemMinimapIconShape}"
      end
    end

    # Prophecy Item ############################################################
    f.group 'Prophecy Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'ProphecyItems'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = ProphecyItemColor
        e.minimap_icon         = "#{PreciousMinimapIconSize} Red #{LeagueItemMinimapIconShape}"
      end
    end

    # Essence Item #############################################################
    f.group 'Essence Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItemTiers1'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = EssenceItemColor
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItemTiers2'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = EssenceItemColor
        e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItemTiers3'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = EssenceItemColor
        e.set_border_color     = MagicColor
        e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItemTiers4'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = EssenceItemColor
        e.set_border_color     = MagicColor
        e.play_effect          = 'Blue Temp'
        e.minimap_icon         = "#{LoftyMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItemTiers5'
        e.set_font_size        = SublimeFontSize
        e.set_background_color = EssenceItemColor
        e.set_border_color     = RareColor
        e.play_effect          = 'Blue Temp'
        e.minimap_icon         = "#{LoftyMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'EssenceItemTiers6'
        e.set_font_size        = SublimeFontSize
        e.set_background_color = EssenceItemColor
        e.set_border_color     = UniqueColor
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = %q("Remnant of Corruption")
        e.set_font_size        = SublimeFontSize
        e.set_background_color = EssenceItemColor
        e.set_border_color     = RareColor
        e.play_effect          = 'Red'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
    end

    # Breach Item ##############################################################
    f.group 'Breach Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'BreachItems'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = BreachItemsColor
        e.play_effect          = 'Brown'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Brown #{LeagueItemMinimapIconShape}"
      end
    end

    # Harbinger Item ###########################################################
    f.group 'Harbinger Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'HarbingerItems'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = HarbingerItemColor
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable = true
        e.klass = 'Piece'
        e.set_font_size        = SublimeFontSize
        e.set_background_color = HarbingerItemColor
        e.set_border_color     = UniqueColor
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
    end

    # Bestiary Item ############################################################
    f.group 'Bestiary Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'BestiaryItems'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = BestiaryItemColor
      end
    end

    # Incursion Item ###########################################################
    f.group 'Incursion Item1' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'IncursionItems1'
        e.set_font_size        = SublimeFontSize
        e.set_background_color = IncursionItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Red'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{LeagueItemMinimapIconShape}"
      end
    end
    f.group 'Incursion Item2' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'IncursionItems2'
        e.set_font_size        = PreciousFontSize
        e.set_background_color = IncursionItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{LeagueItemMinimapIconShape}"
      end
    end

    # Delve Item ###############################################################
    f.group 'Delve Item' do |g|
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsFosilsUnique'
        e.set_font_size        = LoftyFontSize
        e.set_border_color     = UniqueColor
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsFosilsRara'
        e.set_font_size        = LoftyFontSize
        e.set_border_color     = RareColor
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsFosilsMagic'
        e.set_font_size        = LoftyFontSize
        e.set_border_color     = MagicColor
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{LoftyMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsFosilsNormal'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end

      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsResonatorsUnique'
        e.set_font_size        = LoftyFontSize
        e.set_border_color     = UniqueColor
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsResonatorsRare'
        e.set_font_size        = LoftyFontSize
        e.set_border_color     = RareColor
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{LoftyMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsResonatorsMagic'
        e.set_font_size        = LoftyFontSize
        e.set_background_color = DelveItemColor
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue'
        e.minimap_icon         = "#{PreciousMinimapIconSize} Blue #{LeagueItemMinimapIconShape}"
      end
      g.element do |e|
        e.showable  = true
        e.base_type = 'DelveItemsResonatorsNormal'
        e.set_font_size        = TrivialFontSize
        e.set_background_color = DelveItemColor
        e.set_color_alpha      = ThinAlpha
        e.play_alert_sound     = PreciousAlertSound
        e.play_effect          = 'Blue Temp'
      end
    end

    # Map Fragment #############################################################
    f.group 'Map Fragment' do |g|
      g.element 'Map Fragment' do |e|
        e.showable             = true
        e.klass                = %q("Map Fragment")
        e.set_text_color       = MapFragmentColor
        e.set_border_color     = MapFragmentColor
        e.set_font_size        = LoftyFontSize
        e.minimap_icon         = "#{SublimeMinimapIconSize} White #{FragmentItemMinimapIconShape}"
      end
    end

    # Quest Item ###############################################################
    f.group 'Quest Item' do |g|
      g.element do |e|
        e.showable  = true
        e.klass = %q("Quest Items")
        e.set_border_color     = QuestItemColor
        e.set_text_color       = QuestItemColor
        e.set_font_size        = LoftyFontSize
        e.play_effect          = 'Green'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Green #{QuestItemMinimapIconShape}"
      end
    end

    # Error ####################################################################
    f.group 'Error' do |g|
      g.element do |e|
        e.showable = true
        e.set_font_size        = PreciousFontSize
        e.play_alert_sound     = ErrorAlertSound
        e.play_effect          = 'Red'
        e.minimap_icon         = "#{SublimeMinimapIconSize} Red #{ErrorMinimapIconShape}"
      end
    end
  end
end
