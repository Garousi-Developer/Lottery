import UIKit

func colors(_ color: Color) -> UIColor {
    switch color {
    case .highlightedAsset:
        return MaterialColors.grey300
    case .asset:
        return MaterialColors.grey400
    case .semiDarkAsset:
        return MaterialColors.primaryGrey
    case .darkAsset:
        return MaterialColors.grey700
    
    case .transparentBlack:
        return colors(.black).withAlphaComponent(0.5)
    case .black:
        return MaterialColors.black
    
    case .clear:
        return MaterialColors.clear
    
    case .disabled:
        return MaterialColors.grey300
    
    case .green:
        return MaterialColors.primaryGreen
    
    case .line:
        return MaterialColors.grey200
    
    case .placeholder:
        return MaterialColors.grey200
    
    case .primary:
        return MaterialColors.primaryAmber
    
    case .red:
        return MaterialColors.primaryRed
    
    case .transparentWhite:
        return colors(.white).withAlphaComponent(0.5)
    case .white:
        return MaterialColors.white
    }
}
enum Color: String {
    case highlightedAsset
    case asset
    case semiDarkAsset
    case darkAsset
    
    case transparentBlack
    case black
    
    case clear
    
    case disabled
    
    case green
    
    case line
    
    case placeholder
    
    case primary
    
    case red
    
    case transparentWhite
    case white
}
