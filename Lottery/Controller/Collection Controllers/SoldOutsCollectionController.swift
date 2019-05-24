import UIKit

class SoldOutsCollectionController: CollectionController {
    var soldOutLotteries: [SoldOutLottery] = []
    
    override func itemHeight() -> CGFloat {
        let spacings: CGFloat = 5 * 12 + 6
        let staticHeights: CGFloat = 115 + 35
        let dynamicHeights = fonts(.semiLarge).firstLineHeight + 2 * fonts(.medium).firstLineHeight
        
        return scale * (spacings + staticHeights) + dynamicHeights
    }
    override func item(forCell cell: CollectionCell, atIndexPath indexPath: IndexPath) {
        super.item(forCell: cell, atIndexPath: indexPath)
        
        soldOutLotteries = sharedData[index] as! [SoldOutLottery]
        let castedCell = cell as! SoldOutCollectionCell
        let soldOutLottery = soldOutLotteries[indexPath.item]
        
        castedCell.pictureImageView.image = soldOutLottery.picture
        castedCell.drawDateLabel.text = "\(texts(.drawDate)): \(soldOutLottery.drawDate)"
        castedCell.prizeLabel.text = soldOutLottery.prizeName
        
        setupProductLabel(castedCell, soldOutLottery)
    }
}

extension SoldOutsCollectionController {
    private func setupProductLabel(_ castedCell: SoldOutCollectionCell, _ soldOutLottery: SoldOutLottery) {
        let attributedText = NSMutableAttributedString()
        attributedText.append(NSAttributedString(
            string: "\(texts(.buy)) \(soldOutLottery.productName) \(texts(.forText))"
        ))
        attributedText.append(NSAttributedString(
            string: " "
        ))
        attributedText.append(NSAttributedString(
            string: "\(texts(.currency)) \(soldOutLottery.productPrice.priceFormatted)",
            attributes: [
                NSAttributedString.Key.foregroundColor: colors(.green)
            ]
        ))
        
        castedCell.productLabel.attributedText = attributedText
    }
}
