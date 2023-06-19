class CashRegister
    attr_reader :discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def total
        @total
    end

    def total=(total)
        @total = total
    end

    def add_item(title, price , quanity = 1)
        @title = title
        @price = price
        self.items=(title)
        self.total= (price.to_f * quanity) + @total.to_f
    end

    def apply_discount
        if @discount > 0
            self.total = @total - (@total * @discount / 100)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items=(title)
        @items << title
    end

    def items(*args)
        if args == 3
            @items
        else
            @items.uniq
    end

    def void_last_transaction
        @total - @price
    end
end

