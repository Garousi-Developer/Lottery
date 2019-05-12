func texts(_ text: Text) -> String {
    switch text {
    // Global:
    case .empty:
        return ""
    case .from:
        return "از"
    case .number:
        return "تا"
    case .space:
        return " "
    case .testText:
        return "متن آزمایشی"
    case .toman:
        return "تومان"
    
    // Home:
    case .home:
        return "خانه"
    case .lastChances:
        return "آخرین فرصت ها"
    case .buy:
        return "بخر"
    case .win:
        return "ببر"
    case .sold:
        return "فروخته شده"
    
    // Favorites:
    case .favorites:
        return "علاقه مندی ها"
    
    // Scanner:
    case .scanner:
        return "اسکنر"
    
    // Cart:
    case .cart:
        return "سبد خرید"
    
    // Profile:
    case .profile:
        return "پروفایل"
    }
}
enum Text: String {
    // Global:
    case empty
    case from
    case number
    case space
    case testText
    case toman
    
    // Home:
    case home
    case lastChances
    case buy
    case win
    case sold
    
    // Favorites:
    case favorites
    
    // Scanner:
    case scanner
    
    // Cart:
    case cart
    
    // Profile:
    case profile
}
