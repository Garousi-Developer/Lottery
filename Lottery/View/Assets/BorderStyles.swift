import UIKit

extension UIView {
    func setBorderStyle(_ borderStyle: BorderStyle) {
        switch borderStyle {
        case .none:
            layer.borderWidth = 0
        case .normal:
            layer.borderWidth = 1
            layer.borderColor = colors(.line).cgColor
        }
    }
}
enum BorderStyle: String {
    case none
    case normal
}
