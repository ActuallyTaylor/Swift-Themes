import Foundation
import SwiftThemes
import Runestone
import UIKit

class TomorrowNightBlue: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .tomorrowNightBlue.foreground

    let gutterBackgroundColor: UIColor = .tomorrowNightBlue.background
    let gutterHairlineColor: UIColor = .tomorrowNightBlue.background

    let lineNumberColor: UIColor = .tomorrowNightBlue.comment
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .tomorrowNightBlue.line
    let selectedLinesLineNumberColor: UIColor = .tomorrowNightBlue.foreground
    let selectedLinesGutterBackgroundColor: UIColor = .tomorrowNightBlue.background

    let invisibleCharactersColor: UIColor = .tomorrowNightBlue.comment

    let pageGuideHairlineColor: UIColor = .tomorrowNightBlue.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .tomorrowNightBlue.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .tomorrowNightBlue.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
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

