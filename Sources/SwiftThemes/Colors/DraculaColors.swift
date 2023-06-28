/// Derived from https://github.com/catppuccin/catppuccin

public extension BridgeColor {
    struct Dracula {
        static var background: BridgeColor {
            BridgeColor(red: 40, green: 42, blue: 54, alpha: 1)
        }

        static var currentLine: BridgeColor {
            BridgeColor(red: 68, green: 71, blue: 90, alpha: 1)
        }

        static var foreground: BridgeColor {
            BridgeColor(red: 248, green: 248, blue: 242, alpha: 1)
        }

        static var comment: BridgeColor {
            BridgeColor(red: 98, green: 114, blue: 164, alpha: 1)
        }

        static var cyan: BridgeColor {
            BridgeColor(red: 139, green: 233, blue: 253, alpha: 1)
        }

        static var green: BridgeColor {
            BridgeColor(red: 80, green: 250, blue: 123, alpha: 1)
        }

        static var orange: BridgeColor {
            BridgeColor(red: 255, green: 184, blue: 108, alpha: 1)
        }

        static var pink: BridgeColor {
            BridgeColor(red: 255, green: 121, blue: 198, alpha: 1)
        }

        static var purple: BridgeColor {
            BridgeColor(red: 189, green: 147, blue: 249, alpha: 1)
        }

        static var red: BridgeColor {
            BridgeColor(red: 255, green: 85, blue: 85, alpha: 1)
        }

        static var yellow: BridgeColor {
            BridgeColor(red: 241, green: 250, blue: 140, alpha: 1)
        }

        fileprivate init() { }
    }
    
    static let dracula = Dracula()
}
