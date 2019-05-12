import UIKit

extension UIView {
    func setCornerRadius(_ cornerRadius: CornerRadius) {
        switch cornerRadius {
        case .none:
            layer.cornerRadius = 0
        case .medium:
            layer.cornerRadius = 12
        case .large:
            layer.cornerRadius = 24
        case .half:
            layer.cornerRadius = min(frame.width, frame.height) / 2
        }
    }
}
enum CornerRadius: String {
    case none
    case medium
    case large
    case half
}
