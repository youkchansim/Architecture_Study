import Foundation

public protocol DiscountCondition {
    
    func isSatisfiedBy(_ screening: Screening) -> Bool
}

public struct SequenceCondition: DiscountCondition {
    
    private let sequence: Int
    
    public init(sequence: Int) {
        self.sequence = sequence
    }
    
    public func isSatisfiedBy(_ screening: Screening) -> Bool {
        return screening.isSequence(sequence)
    }
}

public struct PeriodCondition: DiscountCondition {
    
    private let dayOfWeek: Date
    private let startTime: Date
    private let endTime: Date
    
    public init(dayOfWeek: Date, startTime: Date, endTime: Date) {
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }
    
    public func isSatisfiedBy(_ screening: Screening) -> Bool {
        return screening.startTime == dayOfWeek
            && startTime <= screening.startTime
            && endTime >= screening.startTime
    }
}
