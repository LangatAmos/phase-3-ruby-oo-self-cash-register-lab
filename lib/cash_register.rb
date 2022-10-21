require 'pry'
class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount=0, total=0 , items=[])
        @total = total
        @discount = discount 
        @items = items
    end

    def total
        @total
    end

    def add_item(title, price, qty=1)
        @total += price * qty
        qty.times do 
            @items.push title
        end
        @last_transaction = qty * price
    end

    def apply_discount
        @total -= @total * self.discount/100
        if self.discount > 0 
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @items
    end

    def void_last_transaction
        @total -= self.last_transaction
    end
end
