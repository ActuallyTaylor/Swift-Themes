import SwiftThemes
import Runestone

class Tomorrow: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .tomorrow.foreground

    let gutterBackgroundColor: BridgeColor = .tomorrow.background
    let gutterHairlineColor: BridgeColor = .tomorrow.background

    let lineNumberColor: BridgeColor = .tomorrow.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .tomorrow.line
    let selectedLinesLineNumberColor: BridgeColor = .tomorrow.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .tomorrow.background

    let invisibleCharactersColor: BridgeColor = .tomorrow.comment

    let pageGuideHairlineColor: BridgeColor = .tomorrow.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .tomorrow.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .tomorrow.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .tomorrow.comment
        case .constructor:
            return .tomorrow.yellow
        case .function:
            return .tomorrow.blue
        case .keyword, .type:
            return .tomorrow.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .tomorrow.orange
        case .property:
            return .tomorrow.aqua
        case .string:
            return .tomorrow.green
        case .variableBuiltin:
            return .tomorrow.red
        case .operator, .punctuation:
            return .tomorrow.foreground.withAlphaComponent(0.75)
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

