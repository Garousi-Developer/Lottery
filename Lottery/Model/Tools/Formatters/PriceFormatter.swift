import Foundation

extension Double {
    var priceFormatted: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSeparator = ","
        let integerPart = Int(self)
        let decimalPart = String(format: "%.2f", self).split(separator: ".")[1]
        
        let priceFormattedString = numberFormatter.string(from: NSNumber(integerLiteral: integerPart))! + "." + decimalPart
        
        return priceFormattedString
    }
}
