import UIKit

let movie = Movie(fee: Money(amount: 10000), title: "스파이더맨", runningTime: 7200, discountPolicy: PercentDiscountPolicy(percent: 0.3, conditions: [SequenceCondition(sequence: 3)]))

let screening = Screening(movie: movie, sequence: 3, whenScreened: Date())

print(movie.calculateMovieFee(screening: screening))
