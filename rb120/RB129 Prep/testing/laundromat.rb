module OrderManagement
  @@order_id_start = 0

  def calc_order_cost(weight)
    weight * 1.30
  end

  def calc_order_commission(cost)
    cost * .35
  end

  def generate_id
    @@ticket_id_start += 1
  end
end

class Attendant 
  include OrderManagement
  def initialize(name)
    @name = name
    @orders = []
    @commission = 0
  end

  def create_pickup_order(customer, weight, pickup_time)
    @orders << Pickup.new(customer, weight, pickup_time)
  end

  def create_delivery_order(customer, weight, delivery_date)
    @orders << Delivery.new(customer, weight, delivery_date)
  end

  def earnings
    @orders.each do |order|
      @commission += calc_order_commission(order.cost)
    end
    @commission
  end

  def to_s
    @orders.each do |order|
      puts order
    end
    puts "Total Commission: #{commission}"

    private 

    attr_reader :commission, :orders
end

class Order 
  include OrderManagement
  attr_reader :cost

  def initialize(customer, weight)
    @customer_name = customer
    @weight = weight
    @number = generate_id
    @cost = calc_order_cost(self.weight)
    @bag_color = "blue"
  end

  def to_s
    <<-HTML
    ============================
    Order Type: #{self.class}
    Weight: #{weight}
    Cost: #{cost}
    Customer: #{customer_name}
    Bag Color: #{bag_color}
    ============================
    HTML
  end

  private

  attr_reader :customer_name, :weight, :number

end

class Pickup < Order
  def initialize(customer, weight, pickup_time)
    super
    @due_by = pickup_time
  end
end

class Delivery < Order
  def initialize(customer, weight, delivery_date)
    super
    @bag_color = "red"
    @due_by = delivery_date
  end
end


