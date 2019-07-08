import Foundation

struct TicketSeller {
    
    private var ticketOffice: TicketOffice
    
    func sell(to audience: Audience) {
        guard let ticket = ticketOffice.getTicket() else { return }
        ticketOffice.plus(cash: audience.buy(ticket: ticket))
    }
}
