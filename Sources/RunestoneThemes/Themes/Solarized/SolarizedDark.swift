import SwiftThemes
import Runestone

class SolarizedDark: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .solarizedDark.foreground

    let gutterBackgroundColor: BridgeColor = .solarizedDark.background
    let gutterHairlineColor: BridgeColor = .solarizedDark.backgroundHighlights

    let lineNumberColor: BridgeColor = .solarizedDark.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .solarizedDark.backgroundHighlights
    let selectedLinesLineNumberColor: BridgeColor = .solarizedDark.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .solarizedDark.backgroundHighlights

    let invisibleCharactersColor: BridgeColor = .solarizedDark.comment

    let pageGuideHairlineColor: BridgeColor = .solarizedDark.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .solarizedDark.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .solarizedDark.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .solarizedDark.comment
        case .constructor:
            return .solarizedDark.yellow
        case .function:
            return .solarizedDark.blue
        case .keyword, .type:
            return .solarizedDark.violet
        case .number, .constantBuiltin, .constantCharacter:
            return .solarizedDark.orange
        case .property:
            return .solarizedDark.violet
        case .string:
            return .solarizedDark.green
        case .variableBuiltin:
            return .solarizedDark.red
        case .operator, .punctuation:
            return .solarizedDark.cyan
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
        } else if highlightName == .comment {
            return .italic
        } else {
            return []
        }
    }
}

