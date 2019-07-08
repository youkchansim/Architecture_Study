import Foundation

class TicketOffice {
    
    var cash: Cash
    var tickets: [Ticket]
    
    init(cash: Cash, tickets: [Ticket]) {
        self.cash = cash
        self.tickets = tickets
    }
    
    func getTicket() -> Ticket? {
        return tickets.removeFirst()
    }
    
    func plus(cash: Cash) {
        self.cash += cash
    }
}
