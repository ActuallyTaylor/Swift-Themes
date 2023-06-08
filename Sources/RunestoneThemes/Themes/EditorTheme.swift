import SwiftThemes
import Runestone
import UIKit

public enum EditorTheme: Int, CaseIterable, Identifiable, Comparable {
    public var id: Int {
        rawValue
    }
    
    case tomorrow
    case gruvboxLight
    case gruvboxDark
    case catppuccinLatte
    case catppuccinFrappe
    case catppuccinMacchiato
    case catppuccinMocha
    case solarizedLight
    case solarizedDark
    
    public var backgroundColor: UIColor {
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
        }
    }
    
    public var runestoneTheme: Theme {
        switch self {
        case .tomorrow:
            return TomorrowTheme()
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
        }
    }
    
    public static func < (lhs: EditorTheme, rhs: EditorTheme) -> Bool {
        return lhs.id == rhs.id
    }
}
