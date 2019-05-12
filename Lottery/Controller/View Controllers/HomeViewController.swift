import UIKit

class HomeViewController: ViewController {
    @IBOutlet weak var homeTableView: TableView!
    
    var homeTableController: HomeTableController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableController = HomeTableController(viewController: self, tableView: homeTableView)
        homeTableController.data = [
            StaticHome(
                sliderAds: [Ad(picture: #imageLiteral(resourceName: "testSlider1")), Ad(picture: #imageLiteral(resourceName: "testSlider2")), Ad(picture: #imageLiteral(resourceName: "testSlider3")), Ad(picture: #imageLiteral(resourceName: "testSlider4")), Ad(picture: #imageLiteral(resourceName: "testSlider5"))],
                lastChanceLotteries: [
                    Lottery(
                        picture: #imageLiteral(resourceName: "lastChances1"),
                        productName: "قلم",
                        productPrice: 60000,
                        prizeName: "بسته سلامت",
                        numberOfSoldProducts: 290,
                        numberOfProducts: 375
                    ),
                    Lottery(
                        picture: #imageLiteral(resourceName: "lastChances2"),
                        productName: "تی شرت",
                        productPrice: 430000,
                        prizeName: "۴۰٫۰۰۰٫۰۰۰ تومان",
                        numberOfSoldProducts: 102,
                        numberOfProducts: 135
                    ),
                    Lottery(
                        picture: #imageLiteral(resourceName: "lastChances3"),
                        productName: "تی شرت",
                        productPrice: 430000,
                        prizeName: "کیف تشریفاتی",
                        numberOfSoldProducts: 247,
                        numberOfProducts: 385
                    ),
                    Lottery(
                        picture: #imageLiteral(resourceName: "lastChances4"),
                        productName: "فلاسک",
                        productPrice: 390000,
                        prizeName: "ساعت تشریفاتی",
                        numberOfSoldProducts: 69,
                        numberOfProducts: 175
                    )
                ]
            )
        ]
        homeTableView.dataSource = homeTableController
        homeTableView.delegate = homeTableController
    }
}
