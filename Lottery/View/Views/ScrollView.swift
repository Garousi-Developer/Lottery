import UIKit

@IBDesignable
class ScrollView: UIScrollView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
}

extension ScrollView {
    private func setup() {
        alwaysBounceVertical = true
    }
}
