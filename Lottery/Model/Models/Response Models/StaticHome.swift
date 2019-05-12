import UIKit

struct StaticHome {
    let sliderAds: [Ad]
    let lastChanceLotteries: [Lottery]
}

struct Ad {
    let picture: UIImage
}
struct Lottery {
    let picture: UIImage
    let productName: String
    let productPrice: Double
    let prizeName: String
    let numberOfSoldProducts: Int
    let numberOfProducts: Int
}
