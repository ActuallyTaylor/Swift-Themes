import SwiftThemes
import Runestone

/// <#Description#>
class CatppuccinFrappe: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .catppuccinFrappe.text

    let gutterBackgroundColor: BridgeColor = .catppuccinFrappe.base
    let gutterHairlineColor: BridgeColor = .catppuccinFrappe.mantle

    let lineNumberColor: BridgeColor = .catppuccinFrappe.overlay1
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .catppuccinFrappe.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: BridgeColor = .catppuccinFrappe.text
    let selectedLinesGutterBackgroundColor: BridgeColor = .catppuccinFrappe.mantle

    let invisibleCharactersColor: BridgeColor = .catppuccinFrappe.overlay0

    let pageGuideHairlineColor: BridgeColor = .catppuccinFrappe.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .catppuccinFrappe.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .catppuccinFrappe.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinFrappe.overlay0
        case .constructor:
            return .catppuccinFrappe.yellow
        case .function:
            return .catppuccinFrappe.blue
        case .keyword, .type:
            return .catppuccinFrappe.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinFrappe.peach
        case .property:
            return .catppuccinFrappe.lavender
        case .string:
            return .catppuccinFrappe.green
        case .variableBuiltin:
            return .catppuccinFrappe.red
        case .operator, .punctuation:
            return .catppuccinFrappe.sky
        case .variable:
            return nil
        }
    }

    func fontTraits(for highlightName: String) -> FontTraits {
        guard let highlightName = HighlightName(highlightName) else {
            return []
        }
        if highlightName == .keyword {
            return .bold
        } else {
            return []
        }
    }
}

