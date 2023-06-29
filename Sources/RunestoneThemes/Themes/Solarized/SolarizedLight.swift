import SwiftThemes
import Runestone

class SolarizedLight: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .solarizedLight.foreground

    let gutterBackgroundColor: BridgeColor = .solarizedLight.background
    let gutterHairlineColor: BridgeColor = .solarizedLight.backgroundHighlights

    let lineNumberColor: BridgeColor = .solarizedLight.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .solarizedLight.backgroundHighlights
    let selectedLinesLineNumberColor: BridgeColor = .solarizedLight.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .solarizedLight.backgroundHighlights

    let invisibleCharactersColor: BridgeColor = .solarizedLight.comment

    let pageGuideHairlineColor: BridgeColor = .solarizedLight.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .solarizedLight.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .solarizedLight.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .solarizedLight.comment
        case .constructor:
            return .solarizedLight.yellow
        case .function:
            return .solarizedLight.blue
        case .keyword, .type:
            return .solarizedLight.violet
        case .number, .constantBuiltin, .constantCharacter:
            return .solarizedLight.orange
        case .property:
            return .solarizedLight.violet
        case .string:
            return .solarizedLight.green
        case .variableBuiltin:
            return .solarizedLight.red
        case .operator, .punctuation:
            return .solarizedLight.cyan
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

