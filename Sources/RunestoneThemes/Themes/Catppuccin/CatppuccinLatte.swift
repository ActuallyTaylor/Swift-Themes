import SwiftThemes
import Runestone

class CatppuccinLatte: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .catppuccinLatte.text

    let gutterBackgroundColor: BridgeColor = .catppuccinLatte.base
    let gutterHairlineColor: BridgeColor = .catppuccinLatte.mantle

    let lineNumberColor: BridgeColor = .catppuccinLatte.overlay1
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .catppuccinLatte.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: BridgeColor = .catppuccinLatte.text
    let selectedLinesGutterBackgroundColor: BridgeColor = .catppuccinLatte.mantle

    let invisibleCharactersColor: BridgeColor = .catppuccinLatte.overlay0

    let pageGuideHairlineColor: BridgeColor = .catppuccinLatte.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .catppuccinLatte.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .catppuccinLatte.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinLatte.overlay0
        case .constructor:
            return .catppuccinLatte.yellow
        case .function:
            return .catppuccinLatte.blue
        case .keyword, .type:
            return .catppuccinLatte.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinLatte.peach
        case .property:
            return .catppuccinLatte.lavender
        case .string:
            return .catppuccinLatte.green
        case .variableBuiltin:
            return .catppuccinLatte.red
        case .operator, .punctuation:
            return .catppuccinLatte.sky
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

