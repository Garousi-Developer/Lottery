import UIKit

class LastChancesCollectionController: CollectionController {
    var lotteries: [Lottery] = []
    
    override func item(forCell cell: CollectionCell, atIndexPath indexPath: IndexPath) {
        super.item(forCell: cell, atIndexPath: indexPath)
        
        lotteries = data as! [Lottery]
        let castedCell = cell as! LastChanceCollectionCell
        let lottery = lotteries[indexPath.item]
        let progress = CGFloat(lottery.numberOfSoldProducts) / CGFloat(lottery.numberOfProducts)
        
        castedCell.productNameLabel.text = "\(lottery.productName) \(texts(.buy))"
        castedCell.productPriceLabel.text = "\(lottery.productPrice.priceFormatted) \(texts(.toman))"
        castedCell.pictureImageView.image = lottery.picture
        castedCell.prizeNameLabel.text = "\(lottery.prizeName) \(texts(.win))"
        castedCell.progressLabel.text =
            "\(lottery.numberOfSoldProducts) \(texts(.number)) \(texts(.from)) \(lottery.numberOfProducts) \(texts(.number)) \(texts(.sold))"
        
        castedCell.progressView.widthConstraint.constant = progress * castedCell.progressPlaceholderView.bounds.width
        castedCell.progressView.layoutIfNeeded()
        castedCell.progressView.setCornerRadius(.half)
        castedCell.progressView.backgroundColor = color(ofProgress: progress)
    }
}
