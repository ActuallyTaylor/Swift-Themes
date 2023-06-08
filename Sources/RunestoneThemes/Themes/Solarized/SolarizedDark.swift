import SwiftThemes
import Runestone
import UIKit

class SolarizedDark: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .solarizedDark.foreground

    let gutterBackgroundColor: UIColor = .solarizedDark.background
    let gutterHairlineColor: UIColor = .solarizedDark.backgroundHighlights

    let lineNumberColor: UIColor = .solarizedDark.comment
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .solarizedDark.backgroundHighlights
    let selectedLinesLineNumberColor: UIColor = .solarizedDark.foreground
    let selectedLinesGutterBackgroundColor: UIColor = .solarizedDark.backgroundHighlights

    let invisibleCharactersColor: UIColor = .solarizedDark.comment

    let pageGuideHairlineColor: UIColor = .solarizedDark.foreground.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .solarizedDark.foreground.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .solarizedDark.foreground.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .solarizedDark.comment
        case .constructor:
            return .solarizedDark.yellow
        case .function:
            return .solarizedDark.blue
        case .keyword, .type:
            return .solarizedDark.violet
        case .number, .constantBuiltin, .constantCharacter:
            return .solarizedDark.orange
        case .property:
            return .solarizedDark.violet
        case .string:
            return .solarizedDark.green
        case .variableBuiltin:
            return .solarizedDark.red
        case .operator, .punctuation:
            return .solarizedDark.cyan
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

