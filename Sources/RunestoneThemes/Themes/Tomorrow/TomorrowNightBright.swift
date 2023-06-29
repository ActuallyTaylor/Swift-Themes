import Foundation
import SwiftThemes
import Runestone

class TomorrowNightBright: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .tomorrowNightBright.foreground

    let gutterBackgroundColor: BridgeColor = .tomorrowNightBright.background
    let gutterHairlineColor: BridgeColor = .tomorrowNightBright.background

    let lineNumberColor: BridgeColor = .tomorrowNightBright.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .tomorrowNightBright.line
    let selectedLinesLineNumberColor: BridgeColor = .tomorrowNightBright.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .tomorrowNightBright.background

    let invisibleCharactersColor: BridgeColor = .tomorrowNightBright.comment

    let pageGuideHairlineColor: BridgeColor = .tomorrowNightBright.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .tomorrowNightBright.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .tomorrowNightBright.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .tomorrowNightBright.comment
        case .constructor:
            return .tomorrowNightBright.yellow
        case .function:
            return .tomorrowNightBright.blue
        case .keyword, .type:
            return .tomorrowNightBright.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .tomorrowNightBright.orange
        case .property:
            return .tomorrowNightBright.aqua
        case .string:
            return .tomorrowNightBright.green
        case .variableBuiltin:
            return .tomorrowNightBright.red
        case .operator, .punctuation:
            return .tomorrowNightBright.foreground.withAlphaComponent(0.75)
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

