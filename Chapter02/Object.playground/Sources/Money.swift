import Foundation

public struct Money {
    public typealias BigDecimal = Double
    public static let ZERO = Money.wons(0)
    
    private let amount: BigDecimal
    
    public init(amount: BigDecimal) {
        self.amount = amount
    }
    
    public static func wons(_ amount: Int) -> Money {
        return Money(amount: BigDecimal(amount))
    }
    
    public static func wons(_ amount: Double) -> Money {
        return Money(amount: BigDecimal(amount))
    }
    
    public func times(_ percent: Double) -> Money {
        return Money(amount: self.amount * percent)
    }
}

extension Money {
    
    public static func +(lhs: Money, rhs: Money) -> Money {
        return Money(amount: lhs.amount + rhs.amount)
    }
    
    public static func -(lhs: Money, rhs: Money) -> Money {
        return Money(amount: lhs.amount - rhs.amount)
    }
}

extension Money: Comparable {
    
    public static func < (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount < rhs.amount
    }

    public static func <= (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount <= rhs.amount
    }

    public static func >= (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount >= rhs.amount
    }
    
    public static func > (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount > rhs.amount
    }
}
