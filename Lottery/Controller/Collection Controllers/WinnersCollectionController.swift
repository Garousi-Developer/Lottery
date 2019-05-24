import UIKit

class WinnersCollectionController: CollectionController {
    var winners: [Winner] = []
    
    override func itemHeight() -> CGFloat {
        let spacings: CGFloat = 4 * 12 + 9 + 3 * 6
        let staticHeights: CGFloat = 75
        let dynamicHeights = 2 * fonts(.semiLarge).firstLineHeight + fonts(.medium).firstLineHeight + 2 * fonts(.semiSmall).firstLineHeight
        
        return scale * (spacings + staticHeights) + dynamicHeights
    }
    override func item(forCell cell: CollectionCell, atIndexPath indexPath: IndexPath) {
        super.item(forCell: cell, atIndexPath: indexPath)
        
        winners = sharedData[index] as! [Winner]
        let castedCell = cell as! WinnerCollectionCell
        let winner = winners[indexPath.item]
        
        castedCell.nameLabel.text = winner.name
        castedCell.prizeLabel.text = winner.prize
        castedCell.pictureImageView.image = winner.picture
        castedCell.ticketNumberLabel.text = winner.ticketNumber
        castedCell.announcedDateTimeLabel.text = "\(texts(.announced)): \(winner.announcedDateTime)"
        
        setupPrizeLabel(castedCell, winner)
        setupTicketNumberLabel(castedCell, winner)
    }
}

extension WinnersCollectionController {
    private func setupPrizeLabel(_ castedCell: WinnerCollectionCell, _ winner: Winner) {
        let attributedText = NSMutableAttributedString()
        attributedText.append(NSAttributedString(
            string: texts(.onWinning)
        ))
        attributedText.append(NSAttributedString(
            string: " "
        ))
        attributedText.append(NSAttributedString(
            string: winner.prize,
            attributes: [
                NSAttributedString.Key.foregroundColor: colors(.darkAsset)
            ]
        ))
        
        castedCell.prizeLabel.attributedText = attributedText
    }
    private func setupTicketNumberLabel(_ castedCell: WinnerCollectionCell, _ winner: Winner) {
        let attributedText = NSMutableAttributedString()
        attributedText.append(NSAttributedString(
            string: texts(.ticketNumber)
        ))
        attributedText.append(NSAttributedString(
            string: ": "
        ))
        attributedText.append(NSAttributedString(
            string: winner.ticketNumber,
            attributes: [
                NSAttributedString.Key.foregroundColor: colors(.cyan)
            ]
        ))
        
        castedCell.ticketNumberLabel.attributedText = attributedText
    }
}
