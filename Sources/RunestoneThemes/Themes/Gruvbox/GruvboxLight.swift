import SwiftThemes
import Runestone

class GruvboxLight: Theme {
    let font: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: BridgeColor = .gruvboxLight.fg

    let gutterBackgroundColor: BridgeColor = .gruvboxLight.bg
    let gutterHairlineColor: BridgeColor = .gruvboxLight.bg1

    let lineNumberColor: BridgeColor = .gruvboxLight.bg3
    let lineNumberFont: BridgeFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: BridgeColor = .gruvboxDark.aqua.withAlphaComponent(0.64)
    let selectedLinesLineNumberColor: BridgeColor = .gruvboxDark.fg
    let selectedLinesGutterBackgroundColor: BridgeColor = .gruvboxLight.bg1

    let invisibleCharactersColor: BridgeColor = .gruvboxLight.darkGray

    let pageGuideHairlineColor: BridgeColor = .gruvboxLight.fg.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: BridgeColor = .gruvboxLight.fg.withAlphaComponent(0.2)

    let markedTextBackgroundColor: BridgeColor = .gruvboxLight.fg.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> BridgeColor? {
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

