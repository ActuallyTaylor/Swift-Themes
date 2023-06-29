import Foundation
import SwiftThemes
import Runestone

class TomorrowNightEighties: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .tomorrowNightEighties.foreground

    let gutterBackgroundColor: BridgeColor = .tomorrowNightEighties.background
    let gutterHairlineColor: BridgeColor = .tomorrowNightEighties.background

    let lineNumberColor: BridgeColor = .tomorrowNightEighties.comment
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .tomorrowNightEighties.line
    let selectedLinesLineNumberColor: BridgeColor = .tomorrowNightEighties.foreground
    let selectedLinesGutterBackgroundColor: BridgeColor = .tomorrowNightEighties.background

    let invisibleCharactersColor: BridgeColor = .tomorrowNightEighties.comment

    let pageGuideHairlineColor: BridgeColor = .tomorrowNightEighties.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .tomorrowNightEighties.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .tomorrowNightEighties.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .tomorrowNightEighties.comment
        case .constructor:
            return .tomorrowNightEighties.yellow
        case .function:
            return .tomorrowNightEighties.blue
        case .keyword, .type:
            return .tomorrowNightEighties.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .tomorrowNightEighties.orange
        case .property:
            return .tomorrowNightEighties.aqua
        case .string:
            return .tomorrowNightEighties.green
        case .variableBuiltin:
            return .tomorrowNightEighties.red
        case .operator, .punctuation:
            return .tomorrowNightEighties.foreground.withAlphaComponent(0.75)
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

