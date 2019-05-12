import UIKit

extension Color {
    var highlighted: UIColor! {
        switch self {
        case .asset, .darkAsset:
            return colors(.highlightedAsset)
        default:
            return nil
        }
    }
}
