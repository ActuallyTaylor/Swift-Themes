import UIKit

public extension UIColor {
    struct Tomorrow {
        public var background: UIColor {
            return .white
        }
        public var selection: UIColor {
            return UIColor(red: 222, green: 222, blue: 222, alpha: 1)
        }
        public var currentLine: UIColor {
            return UIColor(red: 242, green: 242, blue: 242, alpha: 1)
        }
        public var foreground: UIColor {
            return UIColor(red: 96, green: 96, blue: 95, alpha: 1)
        }
        public var comment: UIColor {
            return UIColor(red: 159, green: 161, blue: 158, alpha: 1)
        }
        public var red: UIColor {
            return UIColor(red: 196, green: 74, blue: 62, alpha: 1)
        }
        public var orange: UIColor {
            return UIColor(red: 236, green: 157, blue: 68, alpha: 1)
        }
        public var yellow: UIColor {
            return UIColor(red: 232, green: 196, blue: 66, alpha: 1)
        }
        public var green: UIColor {
            return UIColor(red: 136, green: 154, blue: 46, alpha: 1)
        }
        public var aqua: UIColor {
            return UIColor(red: 100, green: 166, blue: 173, alpha: 1)
        }
        public var blue: UIColor {
            return UIColor(red: 94, green: 133, blue: 184, alpha: 1)
        }
        public var purple: UIColor {
            return UIColor(red: 149, green: 115, blue: 179, alpha: 1)
        }
        
        fileprivate init() {}
    }
    
    static let tomorrow = Tomorrow()
}
