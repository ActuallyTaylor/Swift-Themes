#if canImport(UIKit)
import UIKit

public typealias BridgeColor = UIColor
#elseif canImport(AppKit)
import AppKit

public typealias BridgeColor = NSColor
#endif
