import UIKit

@IBDesignable
class NavigationItem: UINavigationItem {
    @IBInspectable var firstTitle: String = Text.empty.rawValue {
        didSet {
            title = texts(Text(rawValue: firstTitle)!)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(title: String) {
        super.init(title: title)
        setup()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
}

extension NavigationItem {
    private func setup() {
        firstTitle = Text.empty.rawValue
    }
}
