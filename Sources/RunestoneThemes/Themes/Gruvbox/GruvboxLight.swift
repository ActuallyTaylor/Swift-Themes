import SwiftThemes
import Runestone
import UIKit

class GruvboxLight: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .gruvboxLight.fg

    let gutterBackgroundColor: UIColor = .gruvboxLight.bg
    let gutterHairlineColor: UIColor = .gruvboxLight.bg1

    let lineNumberColor: UIColor = .gruvboxLight.bg3
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .gruvboxDark.aqua.withAlphaComponent(0.64)
    let selectedLinesLineNumberColor: UIColor = .gruvboxDark.fg
    let selectedLinesGutterBackgroundColor: UIColor = .gruvboxLight.bg1

    let invisibleCharactersColor: UIColor = .gruvboxLight.darkGray

    let pageGuideHairlineColor: UIColor = .gruvboxLight.fg.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .gruvboxLight.fg.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .gruvboxLight.fg.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .gruvboxLight.darkGray
        case .constructor:
            return .gruvboxLight.yellow
        case .function:
            return .gruvboxLight.blue
        case .keyword, .type:
            return .gruvboxLight.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .gruvboxLight.orange
        case .property:
            return .gruvboxLight.purple
        case .string:
            return .gruvboxLight.green
        case .variableBuiltin:
            return .gruvboxLight.red
        case .operator, .punctuation:
            return .gruvboxLight.aqua
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

