import UIKit

func colors(_ color: Color) -> UIColor {
    switch color {
    case .highlightedAsset:
        return MaterialColors.grey400
    case .lightAsset:
        return MaterialColors.primaryGrey
    case .asset:
        return MaterialColors.grey700
    case .darkAsset:
        return MaterialColors.black
    
    case .transparentBlack:
        return colors(.black).withAlphaComponent(0.5)
    case .black:
        return MaterialColors.black
    
    case .clear:
        return MaterialColors.clear
    
    case .cyan:
        return MaterialColors.primaryCyan
    
    case .disabled:
        return MaterialColors.grey300
    
    case .green:
        return MaterialColors.primaryGreen
    
    case .lightGrey:
        return MaterialColors.grey300
    case .grey:
        return MaterialColors.primaryGrey
    
    case .line:
        return MaterialColors.grey200
    
    case .placeholder:
        return MaterialColors.grey200
    
    case .highlightedPrimary:
        return MaterialColors.amber100
    case .primary:
        return MaterialColors.primaryAmber
    
    case .highlightedRed:
        return MaterialColors.red100
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
    case lightAsset
    case asset
    case darkAsset
    
    case transparentBlack
    case black
    
    case clear
    
    case cyan
    
    case disabled
    
    case green
    
    case lightGrey
    case grey
    
    case line
    
    case placeholder
    
    case highlightedPrimary
    case primary
    
    case highlightedRed
    case red
    
    case transparentWhite
    case white
}
