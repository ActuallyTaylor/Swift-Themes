import SwiftThemes
import Runestone

class CatppuccinMocha: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .catppuccinMocha.text

    let gutterBackgroundColor: BridgeColor = .catppuccinMocha.base
    let gutterHairlineColor: BridgeColor = .catppuccinMocha.mantle

    let lineNumberColor: BridgeColor = .catppuccinMocha.overlay1
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .catppuccinMocha.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: BridgeColor = .catppuccinMocha.text
    let selectedLinesGutterBackgroundColor: BridgeColor = .catppuccinMocha.mantle

    let invisibleCharactersColor: BridgeColor = .catppuccinMocha.overlay0

    let pageGuideHairlineColor: BridgeColor = .catppuccinMocha.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .catppuccinMocha.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .catppuccinMocha.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinMocha.overlay0
        case .constructor:
            return .catppuccinMocha.yellow
        case .function:
            return .catppuccinMocha.blue
        case .keyword, .type:
            return .catppuccinMocha.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinMocha.peach
        case .property:
            return .catppuccinMocha.lavender
        case .string:
            return .catppuccinMocha.green
        case .variableBuiltin:
            return .catppuccinMocha.red
        case .operator, .punctuation:
            return .catppuccinMocha.sky
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

