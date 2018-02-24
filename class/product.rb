class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name  = name
    @price = price
  end
end

product = Product.new("test", 100)
puts product.name
puts product.price


class Dvd < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{name}, #{price}, #{running_time}"
  end
end

dvd = Dvd.new("test2", 1000, 20);
puts dvd.name
puts dvd.running_time
puts dvd.to_s
