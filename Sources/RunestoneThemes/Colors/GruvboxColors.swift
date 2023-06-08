/// Derived from https://github.com/catppuccin/catppuccin

import UIKit

extension UIColor {
    struct Gruvbox {
        enum Style {
            case light
            case dark
        }
        
        var style: Style

        var bg: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "fbf1c7")
            case .dark:
                return UIColor(hex: "282828")
            }
        }

        var red: UIColor {
            return UIColor(hex: "cc241d")
        }

        var green: UIColor {
            return UIColor(hex: "98971a")
        }
        
        var yellow: UIColor {
            return UIColor(hex: "d79921")
        }
        
        var blue: UIColor {
            return UIColor(hex: "458588")
        }

        var purple: UIColor {
            return UIColor(hex: "b16286")
        }

        var aqua: UIColor {
            return UIColor(hex: "689d6a")
        }

        var gray: UIColor {
            return UIColor(hex: "a89984")
        }

        var bg0_h: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "f95d7")
            case .dark:
                return UIColor(hex: "1d2021")
            }
        }

        var bg0: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "fbf1c7")
            case .dark:
                return UIColor(hex: "282828")
            }
        }
        
        var bg0_s: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "f2e5bc")
            case .dark:
                return UIColor(hex: "32302f")
            }
        }

        var bg1: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "ebdbb2")
            case .dark:
                return UIColor(hex: "3c3836")
            }
        }
        
        var bg2: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "d5c4a1")
            case .dark:
                return UIColor(hex: "504945")
            }
        }

        var bg3: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "bdae93")
            case .dark:
                return UIColor(hex: "665c54")
            }
        }
        
        var bg4: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "a89984")
            case .dark:
                return UIColor(hex: "7c6f64")
            }
        }

        var darkGray: UIColor {
            return UIColor(hex: "928374")
        }

        var orange: UIColor {
            return UIColor(hex: "d65d0e")
        }

        var fg: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "3c3836")
            case .dark:
                return UIColor(hex: "ebdbb2")
            }
        }
        
        var fg0: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "282828")
            case .dark:
                return UIColor(hex: "fbf1c7")
            }
        }

        var fg1: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "3c3836")
            case .dark:
                return UIColor(hex: "ebdbb2")
            }
        }
        
        var fg2: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "504945")
            case .dark:
                return UIColor(hex: "d5c4a1")
            }
        }

        var fg3: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "655c54")
            case .dark:
                return UIColor(hex: "bdae93")
            }
        }

        var fg4: UIColor {
            switch style {
            case .light:
                return UIColor(hex: "7c6f64")
            case .dark:
                return UIColor(hex: "a989984")
            }
        }
        
        fileprivate init(_ style: Style) {
            self.style = style
        }
    }
    
    static let gruvboxLight = Gruvbox(.light)
    static let gruvboxDark = Gruvbox(.dark)
}
