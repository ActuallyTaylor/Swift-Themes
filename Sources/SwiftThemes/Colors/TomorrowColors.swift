#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

// Derived from https://github.com/ChrisKempson/Tomorrow-Theme

public extension BridgeColor {
    struct Tomorrow {
        public enum Style {
            case day
            case night
            case nightEighties
            case nightBlue
            case nightBright
        }

        public var style: Style

        public var background: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "ffffff")
            case .night:
                return BridgeColor(hex: "1d1f21")
            case .nightEighties:
                return BridgeColor(hex: "2d2d2d")
            case .nightBlue:
                return BridgeColor(hex: "002451")
            case .nightBright:
                return BridgeColor(hex: "000000")
            }
        }

        public var foreground: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "4d4d4c")
            case .night:
                return BridgeColor(hex: "c5c8c6")
            case .nightEighties:
                return BridgeColor(hex: "cccccc")
            case .nightBlue:
                return BridgeColor(hex: "ffffff")
            case .nightBright:
                return BridgeColor(hex: "eaeaea")
            }
        }

        public var selection: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "d6d6d6")
            case .night:
                return BridgeColor(hex: "373b41")
            case .nightEighties:
                return BridgeColor(hex: "515151")
            case .nightBlue:
                return BridgeColor(hex: "003f8e")
            case .nightBright:
                return BridgeColor(hex: "424242")
            }
        }

        public var line: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "efefef")
            case .night:
                return BridgeColor(hex: "282a2e")
            case .nightEighties:
                return BridgeColor(hex: "393939")
            case .nightBlue:
                return BridgeColor(hex: "00346e")
            case .nightBright:
                return BridgeColor(hex: "2a2a2a")
            }
        }

        public var comment: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "8e908c")
            case .night:
                return BridgeColor(hex: "969896")
            case .nightEighties:
                return BridgeColor(hex: "999999")
            case .nightBlue:
                return BridgeColor(hex: "7285b7")
            case .nightBright:
                return BridgeColor(hex: "969896")
            }
        }

        public var red: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "c82829")
            case .night:
                return BridgeColor(hex: "cc6666")
            case .nightEighties:
                return BridgeColor(hex: "f2777a")
            case .nightBlue:
                return BridgeColor(hex: "ff9da4")
            case .nightBright:
                return BridgeColor(hex: "d54e53")
            }
        }

        public var orange: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "f871f")
            case .night:
                return BridgeColor(hex: "de935f")
            case .nightEighties:
                return BridgeColor(hex: "f99157")
            case .nightBlue:
                return BridgeColor(hex: "ffc58f")
            case .nightBright:
                return BridgeColor(hex: "e78c45")
            }
        }

        public var yellow: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "eab700")
            case .night:
                return BridgeColor(hex: "f0c674")
            case .nightEighties:
                return BridgeColor(hex: "ffcc66")
            case .nightBlue:
                return BridgeColor(hex: "ffeead")
            case .nightBright:
                return BridgeColor(hex: "e7c547")
            }
        }

        public var green: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "718c00")
            case .night:
                return BridgeColor(hex: "b5bd68")
            case .nightEighties:
                return BridgeColor(hex: "99cc99")
            case .nightBlue:
                return BridgeColor(hex: "d1f1a9")
            case .nightBright:
                return BridgeColor(hex: "b9ca4a")
            }
        }

        public var aqua: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "3e99f")
            case .night:
                return BridgeColor(hex: "8abeb7")
            case .nightEighties:
                return BridgeColor(hex: "66cccc")
            case .nightBlue:
                return BridgeColor(hex: "99ffff")
            case .nightBright:
                return BridgeColor(hex: "70c0b1")
            }
        }

        public var blue: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "4271ae")
            case .night:
                return BridgeColor(hex: "81a2be")
            case .nightEighties:
                return BridgeColor(hex: "6699cc")
            case .nightBlue:
                return BridgeColor(hex: "bbdaff")
            case .nightBright:
                return BridgeColor(hex: "7aa6da")
            }
        }

        public var purple: BridgeColor {
            switch style {
            case .day:
                return BridgeColor(hex: "8959a8")
            case .night:
                return BridgeColor(hex: "b294bb")
            case .nightEighties:
                return BridgeColor(hex: "cc99cc")
            case .nightBlue:
                return BridgeColor(hex: "ebbbff")
            case .nightBright:
                return BridgeColor(hex: "c397d8")
            }
        }

        fileprivate init(_ style: Style) {
            self.style = style
        }
    }
    
    static let tomorrow = Tomorrow(.day)
    static let tomorrowNight = Tomorrow(.night)
    static let tomorrowNightEighties = Tomorrow(.nightEighties)
    static let tomorrowNightBlue = Tomorrow(.nightBlue)
    static let tomorrowNightBright = Tomorrow(.nightBright)
    
}
