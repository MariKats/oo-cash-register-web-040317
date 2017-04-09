class CashRegister

attr_accessor :total, :discount, :item, :last_transaction

  def initialize (discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      @items << item
    end
    self.total += price*quantity
    self.last_transaction = price*quantity
  end

  def apply_discount
    if discount !=0
      self.total = total - total * discount / 100.00
       "After the discount, the total comes to $#{self.total.ceil}."
    else
       "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
