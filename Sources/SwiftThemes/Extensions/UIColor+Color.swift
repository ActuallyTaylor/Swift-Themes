import UIKit
import SwiftUI

@available(iOS 15.0, *)
extension UIColor {
    var color: Color {
        return Color(uiColor: self)
    }
}
