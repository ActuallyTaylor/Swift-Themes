import SwiftThemes
import Runestone
import UIKit

class CatppuccinLatte: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .catppuccinLatte.text

    let gutterBackgroundColor: UIColor = .catppuccinLatte.base
    let gutterHairlineColor: UIColor = .catppuccinLatte.mantle

    let lineNumberColor: UIColor = .catppuccinLatte.overlay1
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .catppuccinLatte.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: UIColor = .catppuccinLatte.text
    let selectedLinesGutterBackgroundColor: UIColor = .catppuccinLatte.mantle

    let invisibleCharactersColor: UIColor = .catppuccinLatte.overlay0

    let pageGuideHairlineColor: UIColor = .catppuccinLatte.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .catppuccinLatte.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .catppuccinLatte.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinLatte.overlay0
        case .constructor:
            return .catppuccinLatte.yellow
        case .function:
            return .catppuccinLatte.blue
        case .keyword, .type:
            return .catppuccinLatte.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinLatte.peach
        case .property:
            return .catppuccinLatte.lavender
        case .string:
            return .catppuccinLatte.green
        case .variableBuiltin:
            return .catppuccinLatte.red
        case .operator, .punctuation:
            return .catppuccinLatte.sky
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

