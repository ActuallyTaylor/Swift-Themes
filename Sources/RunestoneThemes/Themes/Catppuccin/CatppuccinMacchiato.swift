import SwiftThemes
import Runestone
import UIKit

class CatppuccinMacchiato: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .catppuccinMacchiato.text

    let gutterBackgroundColor: UIColor = .catppuccinMacchiato.base
    let gutterHairlineColor: UIColor = .catppuccinMacchiato.mantle

    let lineNumberColor: UIColor = .catppuccinMacchiato.overlay1
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .catppuccinMacchiato.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: UIColor = .catppuccinMacchiato.text
    let selectedLinesGutterBackgroundColor: UIColor = .catppuccinMacchiato.mantle

    let invisibleCharactersColor: UIColor = .catppuccinMacchiato.overlay0

    let pageGuideHairlineColor: UIColor = .catppuccinMacchiato.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .catppuccinMacchiato.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .catppuccinMacchiato.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinMacchiato.overlay0
        case .constructor:
            return .catppuccinMacchiato.yellow
        case .function:
            return .catppuccinMacchiato.blue
        case .keyword, .type:
            return .catppuccinMacchiato.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinMacchiato.peach
        case .property:
            return .catppuccinMacchiato.lavender
        case .string:
            return .catppuccinMacchiato.green
        case .variableBuiltin:
            return .catppuccinMacchiato.red
        case .operator, .punctuation:
            return .catppuccinMacchiato.sky
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

