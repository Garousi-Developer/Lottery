import UIKit

extension UIView {
    func setShadowStyle(_ shadowStyle: ShadowStyle) {
        switch shadowStyle {
        case .navigationBar:
            layer.shadowOffset = CGSize(width: 0, height: 3)
            layer.shadowOpacity = 0.075
        case .none:
            layer.shadowOpacity = 0
        case .normal:
            layer.shadowOffset = CGSize(width: 0, height: 0)
            layer.shadowOpacity = 0.125
        case .tabBar:
            layer.shadowOpacity = 0.075
        }
    }
}
enum ShadowStyle: String {
    case navigationBar
    case none
    case normal
    case tabBar
}
