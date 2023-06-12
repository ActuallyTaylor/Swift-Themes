import SwiftThemes
import Runestone
import UIKit

class TomorrowNight: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .tomorrowNight.foreground

    let gutterBackgroundColor: UIColor = .tomorrowNight.background
    let gutterHairlineColor: UIColor = .tomorrowNight.background

    let lineNumberColor: UIColor = .tomorrowNight.comment
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .tomorrowNight.line
    let selectedLinesLineNumberColor: UIColor = .tomorrowNight.foreground
    let selectedLinesGutterBackgroundColor: UIColor = .tomorrowNight.background

    let invisibleCharactersColor: UIColor = .tomorrowNight.comment

    let pageGuideHairlineColor: UIColor = .tomorrowNight.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .tomorrowNight.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .tomorrowNight.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
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

