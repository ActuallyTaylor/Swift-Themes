import SwiftThemes
import Runestone

class CatppuccinMacchiato: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .catppuccinMacchiato.text

    let gutterBackgroundColor: BridgeColor = .catppuccinMacchiato.base
    let gutterHairlineColor: BridgeColor = .catppuccinMacchiato.mantle

    let lineNumberColor: BridgeColor = .catppuccinMacchiato.overlay1
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .catppuccinMacchiato.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: BridgeColor = .catppuccinMacchiato.text
    let selectedLinesGutterBackgroundColor: BridgeColor = .catppuccinMacchiato.mantle

    let invisibleCharactersColor: BridgeColor = .catppuccinMacchiato.overlay0

    let pageGuideHairlineColor: BridgeColor = .catppuccinMacchiato.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .catppuccinMacchiato.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .catppuccinMacchiato.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinMacchiato.overlay0
        case .constructor:
            return .catppuccinMacchiato.yellow
        case .function:
            return .catppuccinMacchiato.blue
        case .keyword, .type:
            return .catppuccinMacchiato.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinMacchiato.peach
        case .property:
            return .catppuccinMacchiato.lavender
        case .string:
            return .catppuccinMacchiato.green
        case .variableBuiltin:
            return .catppuccinMacchiato.red
        case .operator, .punctuation:
            return .catppuccinMacchiato.sky
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

