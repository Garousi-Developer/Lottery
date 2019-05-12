import UIKit

func fonts(_ font: Font) -> UIFont {
    switch font {
    case .small:
        return iranSansMobilePersianNumerals.withSize(scale * 9)
    case .medium:
        return iranSansMobilePersianNumerals.withSize(scale * 11)
    case .large:
        return iranSansMobilePersianNumerals.withSize(scale * 13)
    }
}
enum Font: String {
    case small
    case medium
    case large
}

private let iranSansMobilePersianNumerals = UIFont(name: "IRANSansMobileFaNum", size: -1)!
private let scale = UIScreen.main.bounds.width / 320
