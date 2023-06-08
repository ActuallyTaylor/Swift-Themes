import SwiftThemes
import Runestone
import UIKit

class GruvboxDark: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .gruvboxDark.fg

    let gutterBackgroundColor: UIColor = .gruvboxDark.bg
    let gutterHairlineColor: UIColor = .gruvboxDark.bg1

    let lineNumberColor: UIColor = .gruvboxDark.bg3
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .gruvboxDark.aqua.withAlphaComponent(0.64)
    let selectedLinesLineNumberColor: UIColor = .gruvboxDark.fg
    let selectedLinesGutterBackgroundColor: UIColor = .gruvboxDark.bg1

    let invisibleCharactersColor: UIColor = .gruvboxDark.darkGray

    let pageGuideHairlineColor: UIColor = .gruvboxDark.fg.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .gruvboxDark.fg.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .gruvboxDark.fg.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .gruvboxDark.darkGray
        case .constructor:
            return .gruvboxDark.yellow
        case .function:
            return .gruvboxDark.blue
        case .keyword, .type:
            return .gruvboxDark.purple
        case .number, .constantBuiltin, .constantCharacter:
            return .gruvboxDark.orange
        case .property:
            return .gruvboxDark.purple
        case .string:
            return .gruvboxDark.green
        case .variableBuiltin:
            return .gruvboxDark.red
        case .operator, .punctuation:
            return .gruvboxDark.aqua
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

