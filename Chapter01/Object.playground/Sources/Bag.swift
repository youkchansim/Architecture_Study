import Foundation

typealias Cash = Int

struct Bag {
    
    var cash: Cash
    var ticket: Ticket?
    var invitation: Invitation?
    
    init(cash: Cash) {
        self.cash = cash
    }
    
    init(cash: Cash, invitation: Invitation) {
        self.cash = cash
        self.invitation = invitation
    }
    
    mutating func hold(ticket: Ticket) -> Int {
        if hasInvitation {
            setTicket(ticket: ticket)
            return 0
        } else {
            setTicket(ticket: ticket)
            minusAmount(cash: ticket.fee)
            return ticket.fee
        }
    }
    
    private mutating func setTicket(ticket: Ticket) {
        self.ticket = ticket
    }
    
    private mutating func minusAmount(cash: Cash) {
        self.cash -= cash
    }
}

extension Bag {
    
    var hasInvitation: Bool {
        return invitation != nil
    }
    
    var hasTicket: Bool {
        return ticket != nil
    }
}
