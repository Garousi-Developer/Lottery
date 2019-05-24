import UIKit

class HomeTableController: TableController {
    var home: [Any] = []
    var dynamicHome: DynamicHome!
    
    var sliderPagerController: SliderPagerController!
    var lastChancesCollectionController: LastChancesCollectionController!
    var lotteriesCollectionController: LotteriesCollectionController!
    var soldOutsCollectionController: SoldOutsCollectionController!
    var winnersCollectionController: WinnersCollectionController!
    
    override func numberOfRows() -> Int {
        home = data
        dynamicHome = home [1] as? DynamicHome
        
        return 1 + dynamicHome.categories.count + 1
    }
    override func cell(forTableView tableView: TableView, atIndexPath indexPath: IndexPath) -> TableCell {
        if indexPath.row == 0 {
            let topStaticCell = tableView.dequeueReusableCell(withIdentifier: "topStatic", for: indexPath) as! TopStaticTableCell
            topStaticCell.tableController = self
            let sliderPagerView = topStaticCell.sliderPagerView!
            let lastChancesCollectionView = topStaticCell.lastChancesCollectionView!
            
            let topStaticHome = home[0] as! TopStaticHome
            
            sliderPagerController = SliderPagerController(viewController: viewController, pagerView: sliderPagerView)
            sliderPagerController.index = 0
            sliderPagerController.sharedData = [topStaticHome.sliderAds]
            sliderPagerView.register(PagerCell.self, forCellWithReuseIdentifier: "reusable")
            sliderPagerView.dataSource = sliderPagerController
            sliderPagerView.delegate = sliderPagerController
            
            lastChancesCollectionController = LastChancesCollectionController(
                viewController: viewController,
                collectionView: lastChancesCollectionView
            )
            lastChancesCollectionController.index = 0
            lastChancesCollectionController.sharedData = [topStaticHome.lastChanceLotteries]
            lastChancesCollectionView.dataSource = lastChancesCollectionController
            lastChancesCollectionView.delegate = lastChancesCollectionController
            
            topStaticCell.globalAdImageView.image = topStaticHome.globalAdd.picture
            
            return topStaticCell
        }
        else if indexPath.row < 1 + dynamicHome.categories.count {
            let dynamicCell = tableView.dequeueReusableCell(withIdentifier: "dynamic", for: indexPath) as! DynamicTableCell
            dynamicCell.tableController = self
            let lotteriesCollectionView = dynamicCell.lotteriesCollectionView!
            
            let category = dynamicHome.categories[indexPath.row - 1]
            let lotteriesList = dynamicHome.categories.map { (category: Category) -> [Lottery] in
                return category.lotteries
            }
            
            dynamicCell.titleLabel.text = category.title
            
            lotteriesCollectionController = LotteriesCollectionController(viewController: viewController, collectionView: lotteriesCollectionView)
            lotteriesCollectionController.index = indexPath.row - 1
            lotteriesCollectionController.sharedData = lotteriesList
            lotteriesCollectionView.dataSource = lotteriesCollectionController
            lotteriesCollectionView.delegate = lotteriesCollectionController
            
            return dynamicCell
        }
        else {
            let bottomStaticCell = tableView.dequeueReusableCell(withIdentifier: "bottomStatic", for: indexPath) as! BottomStaticTableCell
            bottomStaticCell.tableController = self
            let soldOutsCollectionView = bottomStaticCell.soldOutsCollectionView!
            let winnersCollectionView = bottomStaticCell.winnersCollectionView!
            
            let bottomStaticHome = home[2] as! BottomStaticHome
            
            soldOutsCollectionController = SoldOutsCollectionController(viewController: viewController, collectionView: soldOutsCollectionView)
            soldOutsCollectionController.index = 0
            soldOutsCollectionController.sharedData = [bottomStaticHome.soldOutLotteries]
            soldOutsCollectionView.dataSource = soldOutsCollectionController
            soldOutsCollectionView.delegate = soldOutsCollectionController
            
            winnersCollectionController = WinnersCollectionController(viewController: viewController, collectionView: winnersCollectionView)
            winnersCollectionController.index = 0
            winnersCollectionController.sharedData = [bottomStaticHome.winners]
            winnersCollectionView.dataSource = winnersCollectionController
            winnersCollectionView.delegate = winnersCollectionController
            
            return bottomStaticCell
        }
    }
}
