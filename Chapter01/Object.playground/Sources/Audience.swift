import Foundation

class Audience {
    
    private var bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Int {
        return bag.hold(ticket: ticket)
    }
}
