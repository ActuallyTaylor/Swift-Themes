import Foundation
import SwiftThemes
import Runestone
import UIKit

class TomorrowNightEighties: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .tomorrowNightEighties.foreground

    let gutterBackgroundColor: UIColor = .tomorrowNightEighties.background
    let gutterHairlineColor: UIColor = .tomorrowNightEighties.background

    let lineNumberColor: UIColor = .tomorrowNightEighties.comment
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .tomorrowNightEighties.line
    let selectedLinesLineNumberColor: UIColor = .tomorrowNightEighties.foreground
    let selectedLinesGutterBackgroundColor: UIColor = .tomorrowNightEighties.background

    let invisibleCharactersColor: UIColor = .tomorrowNightEighties.comment

    let pageGuideHairlineColor: UIColor = .tomorrowNightEighties.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .tomorrowNightEighties.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .tomorrowNightEighties.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
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

