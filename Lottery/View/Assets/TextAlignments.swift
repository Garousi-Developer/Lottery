import UIKit

func textAlignments(_ textAlignment: TextAlignment) -> NSTextAlignment {
    switch textAlignment {
    case .right:
        return .right
    case .center:
        return .center
    }
}
enum TextAlignment: String {
    case right
    case center
}
