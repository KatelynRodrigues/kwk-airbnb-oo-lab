require_relative 'host.rb'

class Listing
    
    attr_accessor :host, :beds, :dates_available, :cancellation, :guest, :reviews, :price
    
    def initialize(cancel = "strict", h, b, dates, p)
        @cancellation = cancel
        @guest = []
        @reviews = {
            
        }
        @host = h
        @beds = b
        @dates_available = dates
        @price = p
    end
    
    def reserve_and_pay(guest_name, nights)
        @guest.push(guest_name)
        p @guest
        p @price*nights
        
    end
    
    def leave_review(guest_name, review_text)
        @reviews[guest_name] = "#{review_text}"
        p @reviews
    end
end

listing1 = Listing.new("austin", 3, "june 6-8", 95)
listing2 = Listing.new("austin", 4, "may 14-18", "$65")


listing1.reserve_and_pay(["abby", "katherine"],6 )
listing1.leave_review("marley", "thank you for saving me from my cockroach room!!!!")