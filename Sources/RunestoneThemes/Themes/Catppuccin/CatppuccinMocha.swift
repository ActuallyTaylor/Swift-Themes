import Runestone
import UIKit

class CatppuccinMocha: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .catppuccinMocha.text

    let gutterBackgroundColor: UIColor = .catppuccinMocha.base
    let gutterHairlineColor: UIColor = .catppuccinMocha.mantle

    let lineNumberColor: UIColor = .catppuccinMocha.overlay1
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .catppuccinMocha.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: UIColor = .catppuccinMocha.text
    let selectedLinesGutterBackgroundColor: UIColor = .catppuccinMocha.mantle

    let invisibleCharactersColor: UIColor = .catppuccinMocha.overlay0

    let pageGuideHairlineColor: UIColor = .catppuccinMocha.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .catppuccinMocha.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .catppuccinMocha.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinMocha.overlay0
        case .constructor:
            return .catppuccinMocha.yellow
        case .function:
            return .catppuccinMocha.blue
        case .keyword, .type:
            return .catppuccinMocha.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinMocha.peach
        case .property:
            return .tomorrow.aqua
        case .string:
            return .catppuccinMocha.green
        case .variableBuiltin:
            return .catppuccinMocha.red
        case .operator, .punctuation:
            return .catppuccinMocha.sky
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

