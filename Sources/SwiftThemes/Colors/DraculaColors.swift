/// Derived from https://github.com/catppuccin/catppuccin

import UIKit

public extension UIColor {
    struct Dracula {
        static var background: UIColor {
            UIColor(red: 40, green: 42, blue: 54, alpha: 1)
        }

        static var currentLine: UIColor {
            UIColor(red: 68, green: 71, blue: 90, alpha: 1)
        }

        static var foreground: UIColor {
            UIColor(red: 248, green: 248, blue: 242, alpha: 1)
        }

        static var comment: UIColor {
            UIColor(red: 98, green: 114, blue: 164, alpha: 1)
        }

        static var cyan: UIColor {
            UIColor(red: 139, green: 233, blue: 253, alpha: 1)
        }

        static var green: UIColor {
            UIColor(red: 80, green: 250, blue: 123, alpha: 1)
        }

        static var orange: UIColor {
            UIColor(red: 255, green: 184, blue: 108, alpha: 1)
        }

        static var pink: UIColor {
            UIColor(red: 255, green: 121, blue: 198, alpha: 1)
        }

        static var purple: UIColor {
            UIColor(red: 189, green: 147, blue: 249, alpha: 1)
        }

        static var red: UIColor {
            UIColor(red: 255, green: 85, blue: 85, alpha: 1)
        }

        static var yellow: UIColor {
            UIColor(red: 241, green: 250, blue: 140, alpha: 1)
        }

        fileprivate init() { }
    }
    
    static let dracula = Dracula()
}
