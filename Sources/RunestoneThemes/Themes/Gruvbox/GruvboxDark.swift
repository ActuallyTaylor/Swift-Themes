import SwiftThemes
import Runestone

class GruvboxDark: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .gruvboxDark.fg

    let gutterBackgroundColor: BridgeColor = .gruvboxDark.bg
    let gutterHairlineColor: BridgeColor = .gruvboxDark.bg1

    let lineNumberColor: BridgeColor = .gruvboxDark.bg3
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .gruvboxDark.aqua.withAlphaComponent(0.64)
    let selectedLinesLineNumberColor: BridgeColor = .gruvboxDark.fg
    let selectedLinesGutterBackgroundColor: BridgeColor = .gruvboxDark.bg1

    let invisibleCharactersColor: BridgeColor = .gruvboxDark.darkGray

    let pageGuideHairlineColor: BridgeColor = .gruvboxDark.fg.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .gruvboxDark.fg.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .gruvboxDark.fg.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
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

