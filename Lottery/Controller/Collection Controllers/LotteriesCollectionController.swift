import UIKit

class LotteriesCollectionController: CollectionController {
    var lotteries: [Lottery] = []
    
    override func itemHeight() -> CGFloat {
        let spacings: CGFloat = 2 * 18 + 4 * 12 + 6
        let staticHeights: CGFloat = 115 + 35 + 5
        let dynamicHeights = fonts(.semiLarge).firstLineHeight + 2 * fonts(.medium).firstLineHeight
        
        return scale * (spacings + staticHeights) + dynamicHeights
    }
    override func item(forCell cell: CollectionCell, atIndexPath indexPath: IndexPath) {
        super.item(forCell: cell, atIndexPath: indexPath)
        
        lotteries = sharedData[index] as! [Lottery]
        let castedCell = cell as! LotteryCollectionCell
        let lottery = lotteries[indexPath.item]
        let progress = CGFloat(lottery.numberOfSoldProducts) / CGFloat(lottery.numberOfProducts)
        
        if lottery.isFavorite {
            castedCell.favoriteButton.tintColor = colors(.red)
        }
        else {
            castedCell.favoriteButton.tintColor = colors(.asset)
        }
        castedCell.pictureImageView.image = lottery.picture
        castedCell.prizeLabel.text = lottery.prizeName
        castedCell.numberOfSoldProductsLabel.text = "\(lottery.numberOfSoldProducts) \(texts(.sold))"
        castedCell.numberOfProductsLabel.text = "\(texts(.outOf)) \(lottery.numberOfProducts)"
        
        setupProductLabel(castedCell, lottery)
        setupProgressView(castedCell, progress)
    }
}

extension LotteriesCollectionController {
    private func setupProductLabel(_ castedCell: LotteryCollectionCell, _ lottery: Lottery) {
        let attributedText = NSMutableAttributedString()
        attributedText.append(NSAttributedString(
            string: "\(texts(.buy)) \(lottery.productName) \(texts(.forText))"
        ))
        attributedText.append(NSAttributedString(
            string: " "
        ))
        attributedText.append(NSAttributedString(
            string: "\(texts(.currency)) \(lottery.productPrice.priceFormatted)",
            attributes: [
                NSAttributedString.Key.foregroundColor: colors(.green)
            ]
        ))
        
        castedCell.productLabel.attributedText = attributedText
    }
    private func setupProgressView(_ castedCell: LotteryCollectionCell, _ progress: CGFloat) {
        castedCell.progressView.widthConstraint.constant = progress * castedCell.progressPlaceholderView.bounds.width
        castedCell.progressView.layoutIfNeeded()
        castedCell.progressView.setCornerRadius(.half)
        castedCell.progressView.backgroundColor = color(ofProgress: progress)
    }
}
