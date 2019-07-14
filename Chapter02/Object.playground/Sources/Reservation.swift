import Foundation

public struct Reservation {
    
    private var customer: Customer
    private var screening: Screening
    private var money: Money
    private var audienceCount: Int
    
    public init(customer: Customer, screening: Screening, money: Money, audienceCount: Int) {
        self.customer = customer
        self.screening = screening
        self.money = money
        self.audienceCount = audienceCount
    }
}
