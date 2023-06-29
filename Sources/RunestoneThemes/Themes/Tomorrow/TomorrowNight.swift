import SwiftThemes
import Runestone

class TomorrowNight: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .tomorrowNight.foreground

    let gutterBackgroundColor: BridgeColor = .tomorrowNight.background
    let gutterHairlineColor: BridgeColor = .tomorrowNight.background

    let lineNumberColor: BridgeColor = .tomorrowNight.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .tomorrowNight.line
    let selectedLinesLineNumberColor: BridgeColor = .tomorrowNight.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .tomorrowNight.background

    let invisibleCharactersColor: BridgeColor = .tomorrowNight.comment

    let pageGuideHairlineColor: BridgeColor = .tomorrowNight.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .tomorrowNight.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .tomorrowNight.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .tomorrowNight.comment
        case .constructor:
            return .tomorrowNight.yellow
        case .function:
            return .tomorrowNight.blue
        case .keyword, .type:
            return .tomorrowNight.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .tomorrowNight.orange
        case .property:
            return .tomorrowNight.aqua
        case .string:
            return .tomorrowNight.green
        case .variableBuiltin:
            return .tomorrowNight.red
        case .operator, .punctuation:
            return .tomorrowNight.foreground.withAlphaComponent(0.75)
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

