import Foundation
import SwiftThemes
import Runestone

class TomorrowNightBlue: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .tomorrowNightBlue.foreground

    let gutterBackgroundColor: BridgeColor = .tomorrowNightBlue.background
    let gutterHairlineColor: BridgeColor = .tomorrowNightBlue.background

    let lineNumberColor: BridgeColor = .tomorrowNightBlue.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .tomorrowNightBlue.line
    let selectedLinesLineNumberColor: BridgeColor = .tomorrowNightBlue.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .tomorrowNightBlue.background

    let invisibleCharactersColor: BridgeColor = .tomorrowNightBlue.comment

    let pageGuideHairlineColor: BridgeColor = .tomorrowNightBlue.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .tomorrowNightBlue.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .tomorrowNightBlue.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .tomorrowNightBlue.comment
        case .constructor:
            return .tomorrowNightBlue.yellow
        case .function:
            return .tomorrowNightBlue.blue
        case .keyword, .type:
            return .tomorrowNightBlue.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .tomorrowNightBlue.orange
        case .property:
            return .tomorrowNightBlue.aqua
        case .string:
            return .tomorrowNightBlue.green
        case .variableBuiltin:
            return .tomorrowNightBlue.red
        case .operator, .punctuation:
            return .tomorrowNightBlue.foreground.withAlphaComponent(0.75)
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

