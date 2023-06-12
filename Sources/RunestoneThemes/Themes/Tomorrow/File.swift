import Foundation
import SwiftThemes
import Runestone
import UIKit

class TomorrowNightBright: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .tomorrowNightBright.foreground

    let gutterBackgroundColor: UIColor = .tomorrowNightBright.background
    let gutterHairlineColor: UIColor = .tomorrowNightBright.background

    let lineNumberColor: UIColor = .tomorrowNightBright.comment
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .tomorrowNightBright.line
    let selectedLinesLineNumberColor: UIColor = .tomorrowNightBright.foreground
    let selectedLinesGutterBackgroundColor: UIColor = .tomorrowNightBright.background

    let invisibleCharactersColor: UIColor = .tomorrowNightBright.comment

    let pageGuideHairlineColor: UIColor = .tomorrowNightBright.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .tomorrowNightBright.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .tomorrowNightBright.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
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

