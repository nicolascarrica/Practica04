require 'csv'

class ProductsList
  def initialize(filename)
    @products = []
    parse_csv(filename)
  end

  def parse_csv(filename)
    CSV.foreach(filename) do |row|
      product = {
        id: row[0],
        name: row[1],
        price: row[2].to_f
      }
      @products << product
    end
  end

  def list_products
    @products.each do |product|
      puts "ID: #{product[:id]}, Name: #{product[:name]}, Price: $#{product[:price]}"
    end
  end

  def include?(product_name)
    @products.any? { |product| product[:name].delete("'") == product_name }
  end

  def get_price(product_name)
    product = @products.find { |product| product[:name].delete("'") == product_name }
    product ? product[:price] : 0
  end
end