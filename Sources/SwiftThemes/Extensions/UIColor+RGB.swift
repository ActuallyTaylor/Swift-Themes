import Foundation

extension BridgeColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat) {
        self.init(red: Double(red) / 255, green: Double(green) / 255, blue: Double(blue) / 255, alpha: alpha)
    }
}
