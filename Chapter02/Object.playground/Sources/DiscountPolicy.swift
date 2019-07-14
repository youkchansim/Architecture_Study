import Foundation

public protocol DiscountPolicy {
    
    func calculateDiscountAmount(_ screening: Screening) -> Money
}

public class DefaultDiscountPolicy: DiscountPolicy {
    
    fileprivate let conditions: [DiscountCondition]
    
    public init(conditions: [DiscountCondition]) {
        self.conditions = conditions
    }
    
    fileprivate func getDiscountAmount(_ screening: Screening) -> Money {
        return Money.ZERO
    }
    
    public func calculateDiscountAmount(_ screening: Screening) -> Money {
        for condition in conditions {
            if condition.isSatisfiedBy(screening) {
                return getDiscountAmount(screening)
            }
        }
        
        return Money.ZERO
    }
}

public class AmountDiscountPolicy: DefaultDiscountPolicy {
    
    private let discountAmount: Money
    
    public init(discountAmount: Money, conditions: [DiscountCondition]) {
        self.discountAmount = discountAmount
        super.init(conditions: conditions)
    }
    
    override func getDiscountAmount(_ screening: Screening) -> Money {
        return discountAmount
    }
}

public class PercentDiscountPolicy: DefaultDiscountPolicy {
    
    private let percent: Double
    
    public init(percent: Double, conditions: [DiscountCondition]) {
        self.percent = percent
        super.init(conditions: conditions)
    }
    
    override func getDiscountAmount(_ screening: Screening) -> Money {
        return screening.movieFee.times(percent)
    }
}

public class NoneDiscountPolicy: DiscountPolicy {
    
    public init() {}
    
    public func calculateDiscountAmount(_ screening: Screening) -> Money {
        return Money.ZERO
    }
}
