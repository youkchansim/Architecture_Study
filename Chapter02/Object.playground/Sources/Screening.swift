import Foundation

public class Screening {
    
    private let movie: Movie
    private let sequence: Int
    private let whenScreened: Date
    
    public init(movie: Movie, sequence: Int, whenScreened: Date) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }
    
    public func isSequence(_ sequence: Int) -> Bool {
        return self.sequence == sequence
    }
    
    public func reserve(customer: Customer, audienceCount: Int) -> Reservation {
        return Reservation(customer: customer, screening: self, money: calculateFee(audienceCount), audienceCount: audienceCount)
    }
    
    private func calculateFee(_ audienceCount: Int) -> Money {
        return movie.calculateMovieFee(screening: self).times(Double(audienceCount))
    }
}

public extension Screening {
    
    var startTime: Date {
        return whenScreened
    }
    
    var movieFee: Money {
        return movie.fee
    }
}
