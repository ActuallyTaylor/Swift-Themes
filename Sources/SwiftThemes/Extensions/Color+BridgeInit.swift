import SwiftUI

public extension Color {
    init(bridgeColor: BridgeColor) {
        #if canImport(UIKit)
        self = Color(uiColor: bridgeColor)
        #elseif canImport(AppKit)
        self = Color(nsColor: bridgeColor)
        #endif
    }
}
