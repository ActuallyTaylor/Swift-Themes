// Derived from https://github.com/ChrisKempson/Tomorrow-Theme
import UIKit

public extension UIColor {
    struct Tomorrow {
        public enum Style {
            case day
            case night
            case nightEighties
            case nightBlue
            case nightBright
        }

        public var style: Style

        public var background: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "ffffff")
            case .night:
                return UIColor(hex: "1d1f21")
            case .nightEighties:
                return UIColor(hex: "2d2d2d")
            case .nightBlue:
                return UIColor(hex: "002451")
            case .nightBright:
                return UIColor(hex: "000000")
            }
        }

        public var foreground: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "4d4d4c")
            case .night:
                return UIColor(hex: "c5c8c6")
            case .nightEighties:
                return UIColor(hex: "cccccc")
            case .nightBlue:
                return UIColor(hex: "ffffff")
            case .nightBright:
                return UIColor(hex: "eaeaea")
            }
        }

        public var selection: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "d6d6d6")
            case .night:
                return UIColor(hex: "373b41")
            case .nightEighties:
                return UIColor(hex: "515151")
            case .nightBlue:
                return UIColor(hex: "003f8e")
            case .nightBright:
                return UIColor(hex: "424242")
            }
        }

        public var line: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "efefef")
            case .night:
                return UIColor(hex: "282a2e")
            case .nightEighties:
                return UIColor(hex: "393939")
            case .nightBlue:
                return UIColor(hex: "00346e")
            case .nightBright:
                return UIColor(hex: "2a2a2a")
            }
        }

        public var comment: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "8e908c")
            case .night:
                return UIColor(hex: "969896")
            case .nightEighties:
                return UIColor(hex: "999999")
            case .nightBlue:
                return UIColor(hex: "7285b7")
            case .nightBright:
                return UIColor(hex: "969896")
            }
        }

        public var red: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "c82829")
            case .night:
                return UIColor(hex: "cc6666")
            case .nightEighties:
                return UIColor(hex: "f2777a")
            case .nightBlue:
                return UIColor(hex: "ff9da4")
            case .nightBright:
                return UIColor(hex: "d54e53")
            }
        }

        public var orange: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "f871f")
            case .night:
                return UIColor(hex: "de935f")
            case .nightEighties:
                return UIColor(hex: "f99157")
            case .nightBlue:
                return UIColor(hex: "ffc58f")
            case .nightBright:
                return UIColor(hex: "e78c45")
            }
        }

        public var yellow: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "eab700")
            case .night:
                return UIColor(hex: "f0c674")
            case .nightEighties:
                return UIColor(hex: "ffcc66")
            case .nightBlue:
                return UIColor(hex: "ffeead")
            case .nightBright:
                return UIColor(hex: "e7c547")
            }
        }

        public var green: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "718c00")
            case .night:
                return UIColor(hex: "b5bd68")
            case .nightEighties:
                return UIColor(hex: "99cc99")
            case .nightBlue:
                return UIColor(hex: "d1f1a9")
            case .nightBright:
                return UIColor(hex: "b9ca4a")
            }
        }

        public var aqua: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "3e99f")
            case .night:
                return UIColor(hex: "8abeb7")
            case .nightEighties:
                return UIColor(hex: "66cccc")
            case .nightBlue:
                return UIColor(hex: "99ffff")
            case .nightBright:
                return UIColor(hex: "70c0b1")
            }
        }

        public var blue: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "4271ae")
            case .night:
                return UIColor(hex: "81a2be")
            case .nightEighties:
                return UIColor(hex: "6699cc")
            case .nightBlue:
                return UIColor(hex: "bbdaff")
            case .nightBright:
                return UIColor(hex: "7aa6da")
            }
        }

        public var purple: UIColor {
            switch style {
            case .day:
                return UIColor(hex: "8959a8")
            case .night:
                return UIColor(hex: "b294bb")
            case .nightEighties:
                return UIColor(hex: "cc99cc")
            case .nightBlue:
                return UIColor(hex: "ebbbff")
            case .nightBright:
                return UIColor(hex: "c397d8")
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
