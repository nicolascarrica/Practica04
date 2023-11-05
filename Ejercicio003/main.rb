require_relative 'products-list'
require_relative 'purchase'


product_list = ProductsList.new('products.csv')
puts "Lista de productos:"
product_list.list_products


purchase = Purchase.new

# Agregar productos a la orden de compra
purchase.add('Historias de chillar', product_list)
purchase.add('Historias de chillar', product_list)
# purchase.add('Pegamento de personas', product_list)


total = purchase.total(product_list)
puts "El total de la orden de compra es: $#{total}"