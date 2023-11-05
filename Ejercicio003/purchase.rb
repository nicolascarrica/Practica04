require_relative 'products-list'
class Purchase
    def initialize
      @items = []
    end
  
    def add(product, product_list)
        if product_list.include?(product)
          @items << product
          puts "Se ha agregado '#{product}' a la lista de la compra."
        else
          puts "El producto '#{product}' no está en la lista y no se ha agregado a la compra."
        end
      end
  
      def total(product_list)
        total_price = 0
        @items.each do |product|
          total_price += product_list.get_price(product)
        end
        if total_price > 200
          total_price *= 0.9
          puts "Se ha aplicado un descuento del 10% por superar los $200." 
        end
        if @items.count("Historias de chillar") >= 2
          total_price -= 10 * @items.count("Historias de chillar")
          puts "Se ha aplicado un descuento de $10 en el producto 'Historias de chillar' por llevar mas de 2 unidades."
        end
        total_price
      end
  end

  #Me falta el ultmo punto