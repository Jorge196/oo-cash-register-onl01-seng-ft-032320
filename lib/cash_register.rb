
class CashRegister

  attr_accessor :total, :discount, :last_transaction, :items 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100 - @discount) / 100
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= self.last_transaction
  end
end
