import UIKit

class LastChancesCollectionController: CollectionController {
    var lastChanceLotteries: [Lottery] = []
    
    override func itemHeight() -> CGFloat {
        let spacings: CGFloat = 5 * 12 + 2 * 6
        let staticHeights: CGFloat = 40 + 5
        let dynamicHeights = 3 * fonts(.medium).firstLineHeight + fonts(.small).firstLineHeight
        
        return scale * (spacings + staticHeights) + dynamicHeights
    }
    override func item(forCell cell: CollectionCell, atIndexPath indexPath: IndexPath) {
        super.item(forCell: cell, atIndexPath: indexPath)
        
        lastChanceLotteries = sharedData[index] as! [Lottery]
        let castedCell = cell as! LastChanceCollectionCell
        let lastChanceLottery = lastChanceLotteries[indexPath.item]
        let progress = CGFloat(lastChanceLottery.numberOfSoldProducts) / CGFloat(lastChanceLottery.numberOfProducts)
        
        castedCell.productNameLabel.text = "\(texts(.buy)) \(lastChanceLottery.productName)"
        castedCell.productPriceLabel.text = "\(texts(.currency)) \(lastChanceLottery.productPrice.priceFormatted)"
        castedCell.pictureImageView.image = lastChanceLottery.picture
        castedCell.prizeNameLabel.text = "\(texts(.win)) \(lastChanceLottery.prizeName)"
        castedCell.progressLabel.text = "\(lastChanceLottery.numberOfSoldProducts) \(texts(.soldOutOf)) \(lastChanceLottery.numberOfProducts)"
        
        setupProgressView(castedCell, progress)
    }
}

extension LastChancesCollectionController {
    private func setupProgressView(_ castedCell: LastChanceCollectionCell, _ progress: CGFloat) {
        castedCell.progressView.widthConstraint.constant = progress * (castedCell.bounds.width - scale * 2 * 12)
        castedCell.progressView.backgroundColor = color(ofProgress: progress)
    }
}
