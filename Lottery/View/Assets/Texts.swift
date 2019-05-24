func texts(_ text: Text) -> String {
    switch text {
    // Global:
    case .currency:
        return "TL"
    case .empty:
        return ""
    case .forText:
        return "for"
    case .initialCount:
        return "1"
    case .testText:
        return "Test Text"
    
    // Home:
    case .home:
        return "Home"
    case .lastChances:
        return "Last Chances"
    case .buy:
        return "Buy"
    case .win:
        return "Win"
    case .soldOutOf:
        return "Sold out of"
    case .addToCart:
        return "Add to cart"
    case .addMore:
        return "Add more"
    case .getAChanceToWin:
        return "Get a chance to win:"
    case .sold:
        return "Sold"
    case .outOf:
        return "out of"
    case .soldOuts:
        return "Sold Outs"
    case .soldOut:
        return "SOLD\nOUT"
    case .drawDate:
        return "Draw Date"
    case .winners:
        return "Winners"
    case .congratulations:
        return "Congratulations"
    case .onWinning:
        return "on winning"
    case .ticketNumber:
        return "Ticket Number"
    case .announced:
        return "Announced"
    
    // Favorites:
    case .favorites:
        return "Favorites"
    
    // Cart:
    case .cart:
        return "Cart"
    
    // Orders:
    case .orders:
        return "Orders"
    
    // Profile:
    case .profile:
        return "Profile"
    }
}
enum Text: String {
    // Global:
    case currency
    case empty
    case forText
    case initialCount
    case testText
    
    // Home:
    case home
    case lastChances
    case buy
    case win
    case soldOutOf
    case addToCart
    case addMore
    case getAChanceToWin
    case sold
    case outOf
    case soldOuts
    case soldOut
    case drawDate
    case winners
    case congratulations
    case onWinning
    case ticketNumber
    case announced
    
    // Favorites:
    case favorites
    
    // Cart:
    case cart
    
    // Orders:
    case orders
    
    // Profile:
    case profile
}
