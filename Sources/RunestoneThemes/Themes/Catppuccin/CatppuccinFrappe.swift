import SwiftThemes
import Runestone
import UIKit

class CatppuccinFrappe: Theme {
    let font: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    let textColor: UIColor = .catppuccinFrappe.text

    let gutterBackgroundColor: UIColor = .catppuccinFrappe.base
    let gutterHairlineColor: UIColor = .catppuccinFrappe.mantle

    let lineNumberColor: UIColor = .catppuccinFrappe.overlay1
    let lineNumberFont: UIFont = .monospacedSystemFont(ofSize: 14, weight: .regular)

    let selectedLineBackgroundColor: UIColor = .catppuccinFrappe.surface2.withAlphaComponent(0.5)
    let selectedLinesLineNumberColor: UIColor = .catppuccinFrappe.text
    let selectedLinesGutterBackgroundColor: UIColor = .catppuccinFrappe.mantle

    let invisibleCharactersColor: UIColor = .catppuccinFrappe.overlay0

    let pageGuideHairlineColor: UIColor = .catppuccinFrappe.text.withAlphaComponent(0.1)
    let pageGuideBackgroundColor: UIColor = .catppuccinFrappe.text.withAlphaComponent(0.2)

    let markedTextBackgroundColor: UIColor = .catppuccinFrappe.text.withAlphaComponent(0.2)

    func textColor(for highlightName: String) -> UIColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return .catppuccinFrappe.overlay0
        case .constructor:
            return .catppuccinFrappe.yellow
        case .function:
            return .catppuccinFrappe.blue
        case .keyword, .type:
            return .catppuccinFrappe.mauve
        case .number, .constantBuiltin, .constantCharacter:
            return .catppuccinFrappe.peach
        case .property:
            return .catppuccinFrappe.lavender
        case .string:
            return .catppuccinFrappe.green
        case .variableBuiltin:
            return .catppuccinFrappe.red
        case .operator, .punctuation:
            return .catppuccinFrappe.sky
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

