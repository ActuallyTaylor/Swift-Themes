import SwiftUI

@available(iOS 15.0, *)
public extension BridgeColor {
    var color: Color {
        return Color(bridgeColor: self)
    }
}
