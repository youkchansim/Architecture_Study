import Foundation

public struct Movie {
    
    public let fee: Money
    private let title: String
    private let runningTime: TimeInterval
    private var discountPolicy: DiscountPolicy
    
    public init(fee: Money, title: String, runningTime: TimeInterval, discountPolicy: DiscountPolicy) {
        self.fee = fee
        self.title = title
        self.runningTime = runningTime
        self.discountPolicy = discountPolicy
    }
    
    public func calculateMovieFee(screening: Screening) -> Money {
        return fee - discountPolicy.calculateDiscountAmount(screening)
    }
    
    public mutating func change(discountPolicy: DiscountPolicy) {
        self.discountPolicy = discountPolicy
    }
}
