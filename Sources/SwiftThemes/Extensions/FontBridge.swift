#if canImport(UIKit)
import UIKit

public typealias BridgeFont = UIFont
#elseif canImport(AppKit)
import AppKit

public typealias BridgeFont = NSFont
#endif
