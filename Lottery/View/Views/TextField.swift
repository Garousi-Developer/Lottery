import UIKit
import PhoneNumberKit

@IBDesignable
class TextField: PhoneNumberTextField {
    @IBInspectable var firstAutoEnableReturnKey: Bool = true {
        didSet {
            enablesReturnKeyAutomatically = firstAutoEnableReturnKey
        }
    }
    @IBInspectable var firstShadowStyle: String! {
        didSet {
            setShadowStyle(ShadowStyle(rawValue: firstShadowStyle)!)
        }
    }
    @IBInspectable var firstMaskedCorners: String! {
        didSet {
            layer.maskedCorners = maskedCornerses(MaskedCorners(rawValue: firstMaskedCorners)!)
        }
    }
    @IBInspectable var firstCornerRadius: String! {
        didSet {
            setCornerRadius(CornerRadius(rawValue: firstCornerRadius)!)
        }
    }
    @IBInspectable var firstBackgroundColor: String! {
        didSet {
            backgroundColor = colors(Color(rawValue: firstBackgroundColor)!)
        }
    }
    @IBInspectable var firstTintColor: String! {
        didSet {
            tintColor = colors(Color(rawValue: firstTintColor)!)
        }
    }
    @IBInspectable var firstPlaceholder: String! {
        didSet {
            attributedPlaceholder = NSAttributedString(
                string: texts(Text(rawValue: firstPlaceholder)!),
                attributes: [NSAttributedString.Key.foregroundColor: colors(.asset)]
            )
        }
    }
    @IBInspectable var firstSecureEntryIcon: UIImage! {
        didSet {
            setupSecurityToggleButton()
        }
    }
    @IBInspectable var firstInsecureEntryIcon: UIImage!
    
    var firstSmartKeyboardType: UIKeyboardType {
        switch textContentType! {
        case .password:
            return .asciiCapable
        case .telephoneNumber:
            return .asciiCapableNumberPad
        default:
            return .default
        }
    }
    var firstCommonMobileNumber: String! {
        guard textContentType == .telephoneNumber else {
            return nil
        }
        
        return "0" + nationalNumber
    }
    var firstSecurityToggleButton: Button!
    var firstIsFirstLayout = true
    
    @objc func textDidChange() {
        if textContentType != .password {
            text = text!.trimmingCharacters(in: [" "])
        }
    }
    @objc func firstToggleSecurity() {
        isSecureTextEntry.toggle()
        
        if isSecureTextEntry {
            firstSecurityToggleButton.firstImageAfterInteractionAnimation = firstSecureEntryIcon
        }
        else {
            firstSecurityToggleButton.firstImageAfterInteractionAnimation = firstInsecureEntryIcon
        }
    }
    
    required init(coder aDecoder: NSCoder) {
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
    override func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if returnKeyType == .next {
            let nextTextField = superview!.viewWithTag(tag + 1) as! TextField
            nextTextField.becomeFirstResponder()
        }
        
        return true
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if firstIsFirstLayout {
            firstIsFirstLayout = false
            
            if let firstCornerRadius = firstCornerRadius {
                setCornerRadius(CornerRadius(rawValue: firstCornerRadius)!)
            }
        }
    }
}

extension TextField {
    private func setup() {
        keyboardType = firstSmartKeyboardType
        enablesReturnKeyAutomatically = firstAutoEnableReturnKey
        borderStyle = .none
        tintColor = colors(.primary)
        textAlignment = textAlignments(.right)
        font = fonts(.medium)
        minimumFontSize = fonts(.small).pointSize
        textColor = colors(.darkAsset)
        if textContentType != .telephoneNumber {
            isPartialFormatterEnabled = false
        }
        
        
    }
    private func setupSecurityToggleButton() {
        firstSecurityToggleButton = Button(type: .custom)
        firstSecurityToggleButton.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        firstSecurityToggleButton.tintColor = colors(.asset)
        firstSecurityToggleButton.setImage(firstSecureEntryIcon, for: .normal)
        firstSecurityToggleButton.addTarget(self, action: #selector(firstToggleSecurity), for: .touchDown)
        
        leftViewMode = .always
        leftView = firstSecurityToggleButton
    }
}
