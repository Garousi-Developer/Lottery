import UIKit

@IBDesignable
class TabItem: UITabBarItem {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init() {
        super.init()
        setup()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
}

extension TabItem {
    private func setup() {
        imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        TabItem.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.font: fonts(.small)],
            for: .normal
        )
    }
}
