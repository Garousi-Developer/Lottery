import UIKit

class HomeTableController: TableController {
    var home: [StaticHome] = []
    var sliderPagerController: SliderPagerController!
    var lastChancesCollectionController: LastChancesCollectionController!
    
    override func cell(forTableView tableView: TableView, atIndexPath indexPath: IndexPath) -> TableCell {
        if indexPath.row == 0 {
            let staticCell = tableView.dequeueReusableCell(withIdentifier: "pager", for: indexPath) as! StaticTableCell
            let sliderPagerView = staticCell.sliderPagerView!
            let lastChancesCollectionView = staticCell.lastChancesCollectionView!
            
            home = data as! [StaticHome]
            
            sliderPagerController = SliderPagerController(viewController: viewController, pagerView: sliderPagerView)
            sliderPagerController.data = home[indexPath.row].sliderAds
            sliderPagerView.register(PagerCell.self, forCellWithReuseIdentifier: "reusable")
            sliderPagerView.dataSource = sliderPagerController
            sliderPagerView.delegate = sliderPagerController
            
            lastChancesCollectionController = LastChancesCollectionController(
                viewController: viewController,
                collectionView: lastChancesCollectionView
            )
            lastChancesCollectionController.data = home[indexPath.row].lastChanceLotteries
            lastChancesCollectionView.dataSource = lastChancesCollectionController
            lastChancesCollectionView.delegate = lastChancesCollectionController
            
            return staticCell
        }
        else {
            return TableCell()
        }
    }
}
