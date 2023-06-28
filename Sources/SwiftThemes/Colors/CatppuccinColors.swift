/// Derived from https://github.com/catppuccin/catppuccin

public extension BridgeColor {
    struct Catppuccin {
        public enum Style {
            case latte
            case frappe
            case macchiato
            case mocha
        }
        
        public var style: Style
        
        public var rosewater: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 220, green: 138, blue: 120, alpha: 1)
            case .frappe:
                return BridgeColor(red: 242, green: 213, blue: 207, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 244, green: 219, blue: 214, alpha: 1)
            case .mocha:
                return BridgeColor(red: 245, green: 224, blue: 220, alpha: 1)
            }
        }
        public var flamingo: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 221, green: 120, blue: 120, alpha: 1)
            case .frappe:
                return BridgeColor(red: 238, green: 190, blue: 190, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 240, green: 198, blue: 198, alpha: 1)
            case .mocha:
                return BridgeColor(red: 242, green: 205, blue: 205, alpha: 1)
            }
        }
        public var pink: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 234, green: 118, blue: 203, alpha: 1)
            case .frappe:
                return BridgeColor(red: 244, green: 184, blue: 228, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 245, green: 189, blue: 230, alpha: 1)
            case .mocha:
                return BridgeColor(red: 245, green: 194, blue: 231, alpha: 1)
            }
        }
        public var mauve: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 136, green: 57, blue: 239, alpha: 1)
            case .frappe:
                return BridgeColor(red: 202, green: 158, blue: 230, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 198, green: 160, blue: 246, alpha: 1)
            case .mocha:
                return BridgeColor(red: 203, green: 166, blue: 247, alpha: 1)
            }
        }
        public var red: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 210, green: 15, blue: 57, alpha: 1)
            case .frappe:
                return BridgeColor(red: 231, green: 130, blue: 132, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 237, green: 135, blue: 150, alpha: 1)
            case .mocha:
                return BridgeColor(red: 243, green: 139, blue: 168, alpha: 1)
            }
        }
        public var maroon: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 230, green: 69, blue: 83, alpha: 1)
            case .frappe:
                return BridgeColor(red: 234, green: 153, blue: 156, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 238, green: 153, blue: 160, alpha: 1)
            case .mocha:
                return BridgeColor(red: 235, green: 160, blue: 172, alpha: 1)
            }
        }
        public var peach: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 254, green: 100, blue: 11, alpha: 1)
            case .frappe:
                return BridgeColor(red: 239, green: 159, blue: 118, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 245, green: 169, blue: 127, alpha: 1)
            case .mocha:
                return BridgeColor(red: 250, green: 179, blue: 135, alpha: 1)
            }
        }
        public var yellow: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 223, green: 142, blue: 20, alpha: 1)
            case .frappe:
                return BridgeColor(red: 229, green: 200, blue: 144, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 238, green: 212, blue: 159, alpha: 1)
            case .mocha:
                return BridgeColor(red: 249, green: 226, blue: 175, alpha: 1)
            }
        }
        public var green: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 64, green: 160, blue: 43, alpha: 1)
            case .frappe:
                return BridgeColor(red: 166, green: 209, blue: 137, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 166, green: 218, blue: 149, alpha: 1)
            case .mocha:
                return BridgeColor(red: 166, green: 227, blue: 161, alpha: 1)
            }
        }
        public var teal: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 23, green: 146, blue: 153, alpha: 1)
            case .frappe:
                return BridgeColor(red: 129, green: 200, blue: 190, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 139, green: 213, blue: 202, alpha: 1)
            case .mocha:
                return BridgeColor(red: 148, green: 226, blue: 213, alpha: 1)
            }
        }
        public var sky: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 4, green: 165, blue: 229, alpha: 1)
            case .frappe:
                return BridgeColor(red: 153, green: 209, blue: 219, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 145, green: 215, blue: 227, alpha: 1)
            case .mocha:
                return BridgeColor(red: 137, green: 220, blue: 235, alpha: 1)
            }
        }
        public var sapphire: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 32, green: 159, blue: 181, alpha: 1)
            case .frappe:
                return BridgeColor(red: 133, green: 139, blue: 220, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 125, green: 196, blue: 228, alpha: 1)
            case .mocha:
                return BridgeColor(red: 116, green: 199, blue: 236, alpha: 1)
            }
        }
        public var blue: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 30, green: 102, blue: 245, alpha: 1)
            case .frappe:
                return BridgeColor(red: 140, green: 170, blue: 238, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 138, green: 173, blue: 244, alpha: 1)
            case .mocha:
                return BridgeColor(red: 137, green: 180, blue: 254, alpha: 1)
            }
        }
        public var lavender: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 114, green: 135, blue: 253, alpha: 1)
            case .frappe:
                return BridgeColor(red: 186, green: 187, blue: 241, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 183, green: 189, blue: 248, alpha: 1)
            case .mocha:
                return BridgeColor(red: 180, green: 190, blue: 254, alpha: 1)
            }
        }
        public var text: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 76, green: 79, blue: 105, alpha: 1)
            case .frappe:
                return BridgeColor(red: 198, green: 208, blue: 245, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 202, green: 211, blue: 245, alpha: 1)
            case .mocha:
                return BridgeColor(red: 205, green: 214, blue: 244, alpha: 1)
            }
        }
        public var subtext1: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 92, green: 95, blue: 119, alpha: 1)
            case .frappe:
                return BridgeColor(red: 181, green: 191, blue: 226, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 184, green: 192, blue: 224, alpha: 1)
            case .mocha:
                return BridgeColor(red: 186, green: 194, blue: 222, alpha: 1)
            }
        }
        public var subtext0: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 108, green: 111, blue: 133, alpha: 1)
            case .frappe:
                return BridgeColor(red: 165, green: 173, blue: 206, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 165, green: 173, blue: 203, alpha: 1)
            case .mocha:
                return BridgeColor(red: 166, green: 173, blue: 200, alpha: 1)
            }
        }
        public var overlay2: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 124, green: 127, blue: 148, alpha: 1)
            case .frappe:
                return BridgeColor(red: 148, green: 156, blue: 187, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 147, green: 154, blue: 183, alpha: 1)
            case .mocha:
                return BridgeColor(red: 147, green: 163, blue: 178, alpha: 1)
            }
        }
        public var overlay1: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 140, green: 143, blue: 161, alpha: 1)
            case .frappe:
                return BridgeColor(red: 131, green: 139, blue: 167, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 128, green: 135, blue: 141, alpha: 1)
            case .mocha:
                return BridgeColor(red: 127, green: 132, blue: 156, alpha: 1)
            }
        }
        public var overlay0: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 156, green: 160, blue: 176, alpha: 1)
            case .frappe:
                return BridgeColor(red: 115, green: 121, blue: 148, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 110, green: 115, blue: 141, alpha: 1)
            case .mocha:
                return BridgeColor(red: 108, green: 112, blue: 134, alpha: 1)
            }
        }
        public var surface2: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 172, green: 176, blue: 190, alpha: 1)
            case .frappe:
                return BridgeColor(red: 98, green: 104, blue: 128, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 91, green: 96, blue: 120, alpha: 1)
            case .mocha:
                return BridgeColor(red: 88, green: 91, blue: 112, alpha: 1)
            }
        }
        public var surface1: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 188, green: 192, blue: 204, alpha: 1)
            case .frappe:
                return BridgeColor(red: 81, green: 87, blue: 109, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 73, green: 77, blue: 100, alpha: 1)
            case .mocha:
                return BridgeColor(red: 69, green: 71, blue: 90, alpha: 1)
            }
        }
        public var surface0: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 204, green: 208, blue: 218, alpha: 1)
            case .frappe:
                return BridgeColor(red: 65, green: 69, blue: 89, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 54, green: 58, blue: 79, alpha: 1)
            case .mocha:
                return BridgeColor(red: 49, green: 50, blue: 68, alpha: 1)
            }
        }
        public var base: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 239, green: 241, blue: 245, alpha: 1)
            case .frappe:
                return BridgeColor(red: 48, green: 52, blue: 70, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 36, green: 39, blue: 58, alpha: 1)
            case .mocha:
                return BridgeColor(red: 30, green: 30, blue: 46, alpha: 1)
            }
        }
        public var mantle: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 230, green: 233, blue: 239, alpha: 1)
            case .frappe:
                return BridgeColor(red: 41, green: 44, blue: 60, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 30, green: 32, blue: 48, alpha: 1)
            case .mocha:
                return BridgeColor(red: 24, green: 24, blue: 37, alpha: 1)
            }
        }
        public var crust: BridgeColor {
            switch style {
            case .latte:
                return BridgeColor(red: 220, green: 224, blue: 232, alpha: 1)
            case .frappe:
                return BridgeColor(red: 35, green: 38, blue: 52, alpha: 1)
            case .macchiato:
                return BridgeColor(red: 24, green: 25, blue: 38, alpha: 1)
            case .mocha:
                return BridgeColor(red: 17, green: 17, blue: 27, alpha: 1)
            }
        }

        fileprivate init(_ style: Style) {
            self.style = style
        }
    }
    
    static let catppuccinLatte = Catppuccin(.latte)
    static let catppuccinFrappe = Catppuccin(.frappe)
    static let catppuccinMacchiato = Catppuccin(.macchiato)
    static let catppuccinMocha = Catppuccin(.mocha)
}
