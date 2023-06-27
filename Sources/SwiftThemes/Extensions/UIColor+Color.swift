import UIKit
import SwiftUI

@available(iOS 15.0, *)
public extension UIColor {
    var color: Color {
        return Color(uiColor: self)
    }
}
