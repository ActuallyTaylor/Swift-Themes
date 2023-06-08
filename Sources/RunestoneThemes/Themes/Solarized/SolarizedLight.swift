import SwiftThemes
import Runestone
import UIKit

class SolarizedLight: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .solarizedLight.foreground

    let gutterBackgroundColor: UIColor = .solarizedLight.background
    let gutterHairlineColor: UIColor = .solarizedLight.backgroundHighlights

    let lineNumberColor: UIColor = .solarizedLight.comment
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .solarizedLight.backgroundHighlights
    let selectedLinesLineNumberColor: UIColor = .solarizedLight.foreground
    let selectedLinesGutterBackgroundColor: UIColor = .solarizedLight.backgroundHighlights

    let invisibleCharactersColor: UIColor = .solarizedLight.comment

    let pageGuideHairlineColor: UIColor = .solarizedLight.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .solarizedLight.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .solarizedLight.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
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

