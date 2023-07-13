#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

/// Derived from https://github.com/catppuccin/catppuccin

public extension BridgeColor {
    struct Gruvbox {
        public enum Style {
            case light
            case dark
        }
        
        public var style: Style

        public var bg: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "fbf1c7")
            case .dark:
                return BridgeColor(hex: "282828")
            }
        }

        public var red: BridgeColor {
            return BridgeColor(hex: "cc241d")
        }

        public var green: BridgeColor {
            return BridgeColor(hex: "98971a")
        }
        
        public var yellow: BridgeColor {
            return BridgeColor(hex: "d79921")
        }
        
        public var blue: BridgeColor {
            return BridgeColor(hex: "458588")
        }

        public var purple: BridgeColor {
            return BridgeColor(hex: "b16286")
        }

        public var aqua: BridgeColor {
            return BridgeColor(hex: "689d6a")
        }

        public var gray: BridgeColor {
            return BridgeColor(hex: "a89984")
        }

        public var bg0_h: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "f95d7")
            case .dark:
                return BridgeColor(hex: "1d2021")
            }
        }

        public var bg0: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "fbf1c7")
            case .dark:
                return BridgeColor(hex: "282828")
            }
        }
        
        public var bg0_s: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "f2e5bc")
            case .dark:
                return BridgeColor(hex: "32302f")
            }
        }

        public var bg1: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "ebdbb2")
            case .dark:
                return BridgeColor(hex: "3c3836")
            }
        }
        
        public var bg2: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "d5c4a1")
            case .dark:
                return BridgeColor(hex: "504945")
            }
        }

        public var bg3: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "bdae93")
            case .dark:
                return BridgeColor(hex: "665c54")
            }
        }
        
        public var bg4: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "a89984")
            case .dark:
                return BridgeColor(hex: "7c6f64")
            }
        }

        public var darkGray: BridgeColor {
            return BridgeColor(hex: "928374")
        }

        public var orange: BridgeColor {
            return BridgeColor(hex: "d65d0e")
        }

        public var fg: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "3c3836")
            case .dark:
                return BridgeColor(hex: "ebdbb2")
            }
        }
        
        public var fg0: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "282828")
            case .dark:
                return BridgeColor(hex: "fbf1c7")
            }
        }

        public var fg1: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "3c3836")
            case .dark:
                return BridgeColor(hex: "ebdbb2")
            }
        }
        
        public var fg2: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "504945")
            case .dark:
                return BridgeColor(hex: "d5c4a1")
            }
        }

        public var fg3: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "655c54")
            case .dark:
                return BridgeColor(hex: "bdae93")
            }
        }

        public var fg4: BridgeColor {
            switch style {
            case .light:
                return BridgeColor(hex: "7c6f64")
            case .dark:
                return BridgeColor(hex: "a989984")
            }
        }
        
        fileprivate init(_ style: Style) {
            self.style = style
        }
    }
    
    static let gruvboxLight = Gruvbox(.light)
    static let gruvboxDark = Gruvbox(.dark)
}
