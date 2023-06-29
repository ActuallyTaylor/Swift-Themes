import Runestone
import UIKit
import SwiftUI

public enum EditorTheme: Int, CaseIterable, Identifiable, Comparable {
    public var id: Int {
        rawValue
    }
    
    case tomorrow
    case tomorrowNight
    case tomorrowNightEighties
    case tomorrowNightBlue
    case tomorrowNightBright

    case gruvboxLight
    case gruvboxDark
    case catppuccinLatte
    case catppuccinFrappe
    case catppuccinMacchiato
    case catppuccinMocha
    case solarizedLight
    case solarizedDark
    
    public var backgroundColor: BridgeColor {
        switch self {
        case .tomorrow:
            return .tomorrow.background
        case .gruvboxLight:
            return .gruvboxLight.bg
        case .gruvboxDark:
            return .gruvboxDark.bg
        case .catppuccinLatte:
            return .catppuccinLatte.base
        case .catppuccinFrappe:
            return .catppuccinFrappe.base
        case .catppuccinMacchiato:
            return .catppuccinMacchiato.base
        case .catppuccinMocha:
            return .catppuccinMocha.base
        case .solarizedLight:
            return .solarizedLight.background
        case .solarizedDark:
            return .solarizedDark.background
        case .tomorrowNight:
            return .tomorrowNight.background
        case .tomorrowNightEighties:
            return .tomorrowNightEighties.background
        case .tomorrowNightBlue:
            return .tomorrowNightBlue.background
        case .tomorrowNightBright:
            return .tomorrowNightBright.background
        }
    }
    
    public var foregroundColor: BridgeColor {
        switch self {
        case .tomorrow:
            return .tomorrow.foreground
        case .gruvboxLight:
            return .gruvboxLight.fg
        case .gruvboxDark:
            return .gruvboxDark.fg
        case .catppuccinLatte:
            return .catppuccinLatte.text
        case .catppuccinFrappe:
            return .catppuccinFrappe.text
        case .catppuccinMacchiato:
            return .catppuccinMacchiato.text
        case .catppuccinMocha:
            return .catppuccinMocha.text
        case .solarizedLight:
            return .solarizedLight.foreground
        case .solarizedDark:
            return .solarizedDark.foreground
        case .tomorrowNight:
            return .tomorrowNight.foreground
        case .tomorrowNightEighties:
            return .tomorrowNightEighties.foreground
        case .tomorrowNightBlue:
            return .tomorrowNightBlue.foreground
        case .tomorrowNightBright:
            return .tomorrowNightBright.foreground
        }
    }

    
    public var runestoneTheme: Theme {
        switch self {
        case .tomorrow:
            return Tomorrow()
        case .gruvboxLight:
            return GruvboxLight()
        case .gruvboxDark:
            return GruvboxDark()
        case .catppuccinLatte:
            return CatppuccinLatte()
        case .catppuccinFrappe:
            return CatppuccinFrappe()
        case .catppuccinMacchiato:
            return CatppuccinMacchiato()
        case .catppuccinMocha:
            return CatppuccinMocha()
        case .solarizedLight:
            return SolarizedLight()
        case .solarizedDark:
            return SolarizedDark()
        case .tomorrowNight:
            return TomorrowNight()
        case .tomorrowNightEighties:
            return TomorrowNightEighties()
        case .tomorrowNightBlue:
            return TomorrowNightBlue()
        case .tomorrowNightBright:
            return TomorrowNightBright()
        }
    }
    
    public var name: String {
        switch self {
        case .tomorrow:
            return "Tomorrow"
        case .gruvboxLight:
            return "Gruvbox Light"
        case .gruvboxDark:
            return "Gruvbox Dark"
        case .catppuccinLatte:
            return "Catppuccin Latte"
        case .catppuccinFrappe:
            return "Catppuccin Frappé"
        case .catppuccinMacchiato:
            return "Catppuccin Macchiato"
        case .catppuccinMocha:
            return "Catppuccin Mocha"
        case .solarizedLight:
            return "Solarized Light"
        case .solarizedDark:
            return "Solarized Dark"
        case .tomorrowNight:
            return "Tomorrow Night"
        case .tomorrowNightEighties:
            return "Tomorrow Night Eighties"
        case .tomorrowNightBlue:
            return "Tomorrow Night Blue"
        case .tomorrowNightBright:
            return "Tomorrow Night Bright"
        }
    }
    
    public var isDarkTheme: Bool {
        switch self {
        case .tomorrow:
            return false
        case .gruvboxLight:
            return false
        case .gruvboxDark:
            return true
        case .catppuccinLatte:
            return false
        case .catppuccinFrappe:
            return true
        case .catppuccinMacchiato:
            return true
        case .catppuccinMocha:
            return true
        case .solarizedLight:
            return false
        case .solarizedDark:
            return true
        case .tomorrowNight:
            return true
        case .tomorrowNightEighties:
            return true
        case .tomorrowNightBlue:
            return true
        case .tomorrowNightBright:
            return true
        }
    }
    
    public var tintColor: BridgeColor {
        switch self {
        case .tomorrow:
            return .tomorrow.red
        case .gruvboxLight:
            return .gruvboxLight.bg3
        case .gruvboxDark:
            return .gruvboxDark.bg3
        case .catppuccinLatte:
            return .catppuccinLatte.rosewater
        case .catppuccinFrappe:
            return .catppuccinFrappe.rosewater
        case .catppuccinMacchiato:
            return .catppuccinMacchiato.rosewater
        case .catppuccinMocha:
            return .catppuccinMocha.rosewater
        case .solarizedLight:
            return .solarizedLight.comment
        case .solarizedDark:
            return .solarizedDark.comment
        case .tomorrowNight:
            return .tomorrowNight.selection
        case .tomorrowNightEighties:
            return .tomorrowNight.selection
        case .tomorrowNightBlue:
            return .tomorrowNight.selection
        case .tomorrowNightBright:
            return .tomorrowNight.selection
        }
    }
    
    public var colorScheme: ColorScheme {
        isDarkTheme ? .dark : .light
    }
    
    public static func < (lhs: EditorTheme, rhs: EditorTheme) -> Bool {
        return lhs.id == rhs.id
    }
}
