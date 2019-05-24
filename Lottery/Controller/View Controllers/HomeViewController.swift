import UIKit

class HomeViewController: ViewController {
    @IBOutlet weak var homeTableView: TableView!
    
    var homeTableController: HomeTableController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableController = HomeTableController(viewController: self, tableView: homeTableView)
        homeTableController.data = [
            TopStaticHome(
                sliderAds: [Ad(picture: #imageLiteral(resourceName: "testSlider1")), Ad(picture: #imageLiteral(resourceName: "testSlider2")), Ad(picture: #imageLiteral(resourceName: "testSlider3")), Ad(picture: #imageLiteral(resourceName: "testSlider4")), Ad(picture: #imageLiteral(resourceName: "testSlider5")), Ad(picture: #imageLiteral(resourceName: "testSlider6")), Ad(picture: #imageLiteral(resourceName: "testSlider7"))],
                lastChanceLotteries: [
                    Lottery(
                        isFavorite: false,
                        picture: #imageLiteral(resourceName: "testLastChance1"),
                        productName: "Pencil",
                        productPrice: 25.80,
                        prizeName: "Fit Pack",
                        numberOfSoldProducts: 290,
                        numberOfProducts: 375
                    ),
                    Lottery(
                        isFavorite: false,
                        picture: #imageLiteral(resourceName: "testLastChance2"),
                        productName: "T-Shirt",
                        productPrice: 180.70,
                        prizeName: "Cash TL 16,000",
                        numberOfSoldProducts: 102,
                        numberOfProducts: 135
                    ),
                    Lottery(
                        isFavorite: false,
                        picture: #imageLiteral(resourceName: "testLastChance3"),
                        productName: "T-Shirt",
                        productPrice: 180.70,
                        prizeName: "Ceremonial Bag",
                        numberOfSoldProducts: 247,
                        numberOfProducts: 385
                    ),
                    Lottery(
                        isFavorite: false,
                        picture: #imageLiteral(resourceName: "testLastChance4"),
                        productName: "Flask",
                        productPrice: 160.40,
                        prizeName: "Ceremonial Watch",
                        numberOfSoldProducts: 69,
                        numberOfProducts: 175
                    )
                ],
                globalAdd: Ad(picture: #imageLiteral(resourceName: "testGlobalAd"))
            ),
            DynamicHome(
                categories: [
                    Category(
                        title: "Lifestyle",
                        lotteries: [
                            Lottery(
                                isFavorite: false,
                                picture: #imageLiteral(resourceName: "testLottery1"),
                                productName: "Pencil",
                                productPrice: 25.80,
                                prizeName: "Fit Pack",
                                numberOfSoldProducts: 320,
                                numberOfProducts: 375
                            ),
                            Lottery(
                                isFavorite: false,
                                picture: #imageLiteral(resourceName: "testLottery2"),
                                productName: "T-Shirt",
                                productPrice: 180.70,
                                prizeName: "Ceremonial Bag",
                                numberOfSoldProducts: 249,
                                numberOfProducts: 385
                            )
                        ]
                    ),
                    Category(
                        title: "Cash",
                        lotteries: [
                            Lottery(
                                isFavorite: true,
                                picture: #imageLiteral(resourceName: "testLottery3"),
                                productName: "Cap",
                                productPrice: 290.90,
                                prizeName: "Cash TL 170,000",
                                numberOfSoldProducts: 325,
                                numberOfProducts: 900
                            ),
                            Lottery(
                                isFavorite: false,
                                picture: #imageLiteral(resourceName: "testLottery3"),
                                productName: "Notebook",
                                productPrice: 89.70,
                                prizeName: "Cash TL 4,500",
                                numberOfSoldProducts: 17,
                                numberOfProducts: 80
                            )
                        ]
                    ),
                    Category(
                        title: "Auto",
                        lotteries: [
                            Lottery(
                                isFavorite: true,
                                picture: #imageLiteral(resourceName: "testLottery4"),
                                productName: "Cap",
                                productPrice: 290.90,
                                prizeName: "Mercedes Benz",
                                numberOfSoldProducts: 339,
                                numberOfProducts: 1125
                            )
                        ]
                    ),
                    Category(
                        title: "Watches",
                        lotteries: [
                            Lottery(
                                isFavorite: false,
                                picture: #imageLiteral(resourceName: "testLottery5"),
                                productName: "Flask",
                                productPrice: 160.40,
                                prizeName: "Ceremonial Watch",
                                numberOfSoldProducts: 97,
                                numberOfProducts: 175
                            )
                        ]
                    ),
                    Category(
                        title: "Electronics",
                        lotteries: [
                            Lottery(
                                isFavorite: true,
                                picture: #imageLiteral(resourceName: "testLottery6"),
                                productName: "Pencil",
                                productPrice: 24.20,
                                prizeName: "Smart TV",
                                numberOfSoldProducts: 102,
                                numberOfProducts: 200
                            )
                        ]
                    )
                ]
            ),
            BottomStaticHome(
                soldOutLotteries: [
                    SoldOutLottery(
                        picture: #imageLiteral(resourceName: "testLottery3"),
                        productName: "Pencil",
                        productPrice: 86.10,
                        drawDate: "20 May 2019",
                        prizeName: "Cash TL 25,000"
                    ),
                    SoldOutLottery(
                        picture: #imageLiteral(resourceName: "testLottery3"),
                        productName: "Notebook",
                        productPrice: 320.50,
                        drawDate: "16 May 2019",
                        prizeName: "Cash TL 16,000"
                    ),
                    SoldOutLottery(
                        picture: #imageLiteral(resourceName: "testLottery1"),
                        productName: "Pencil",
                        productPrice: 86.10,
                        drawDate: "16 May 2019",
                        prizeName: "Fit Pack"
                    ),
                    SoldOutLottery(
                        picture: #imageLiteral(resourceName: "testLottery6"),
                        productName: "Pencil",
                        productPrice: 86.10,
                        drawDate: "16 May 2019",
                        prizeName: "Smart TV"
                    ),
                    SoldOutLottery(
                        picture: #imageLiteral(resourceName: "testLottery7"),
                        productName: "Pencil",
                        productPrice: 86.10,
                        drawDate: "16 May 2019",
                        prizeName: "Gold Bar"
                    )
                ],
                winners: [
                    Winner(
                        name: "Saif AlMansoori",
                        prize: "Cash TL 58,000",
                        picture: #imageLiteral(resourceName: "testWinner1"),
                        ticketNumber: "CG-00129-00080",
                        announcedDateTime: "13 May 2019, 15:00"
                    ),
                    Winner(
                        name: "Sultan Almatrooshi",
                        prize: "Gold Bar",
                        picture: #imageLiteral(resourceName: "testWinner2"),
                        ticketNumber: "CG-00133-00005",
                        announcedDateTime: "13 May 2019, 14:45"
                    ),
                    Winner(
                        name: "Abraham Wossen",
                        prize: "Smart TV",
                        picture: #imageLiteral(resourceName: "testWinner3"),
                        ticketNumber: "CG-00128-00079",
                        announcedDateTime: "13 May 2019, 14:30"
                    )
                ]
            )
        ]
        homeTableView.dataSource = homeTableController
        homeTableView.delegate = homeTableController
    }
}
