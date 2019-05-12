import Foundation

extension Double {
    var priceFormatted: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSeparator = "٫"
        let integerPart = Int(self)
        
        let priceFormattedString = numberFormatter.string(from: NSNumber(integerLiteral: integerPart))!
        
        return priceFormattedString
    }
}
