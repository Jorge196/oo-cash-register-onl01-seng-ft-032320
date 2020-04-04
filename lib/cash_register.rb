class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:quantity] = quantity

    @cart << item_info

    @totatl += price * quantity

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the dsicount, the total to $#{@total}."
  end 

  def void_last_transaction
    @total -= @items
  end
end
