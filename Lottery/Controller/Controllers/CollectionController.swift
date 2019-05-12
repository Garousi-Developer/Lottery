import UIKit

class CollectionController: SecondaryController {
    var collectionView: CollectionView!
    var data: [Any] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
    
    func item(forCell cell: CollectionCell, atIndexPath indexPath: IndexPath) {
        cell.collectionController = self
    }
    
    init(viewController: ViewController, collectionView: CollectionView) {
        super.init(viewController: viewController)
        
        self.collectionView = collectionView
    }
}
extension CollectionController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reusable", for: indexPath) as! CollectionCell
        
        item(forCell: cell, atIndexPath: indexPath)
        
        return cell
    }
}
extension CollectionController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let cellsPerRow = CGFloat(self.collectionView.firstCellsPerRow)
        
        let width = collectionView.bounds.width
        let horizontalInsets = layout.sectionInset.left + layout.sectionInset.right
        let interitemSpacings: CGFloat
        switch layout.scrollDirection {
        case .horizontal:
            interitemSpacings = cellsPerRow * layout.minimumLineSpacing
        case .vertical:
            interitemSpacings = cellsPerRow * layout.minimumInteritemSpacing
        @unknown default:
            return CGSize(width: 0, height: 0)
        }
        
        let itemWidth = CGFloat(Int(
            (width - horizontalInsets - interitemSpacings) / cellsPerRow
        ))
        guard itemWidth > 0 else {
            fatalError("\"itemWidth\" must be positive.")
        }
        
        return CGSize(
            width: itemWidth,
            height: layout.itemSize.height
        )
    }
}
