# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# fIRST OBJect "Herbal Shampoo [DEMO]"
# {:id=>52647189, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>425.0, :weight_unit=>"oz", :weight=>14.99}

product1 = Product.first_or_create(name:"Herbal Shampoo [DEMO]", width: 10.0, height: 10.0, weight_grams: 425.0, weight_unit: "oz", depth: 15.0, stock: 10)
product1.save!
#second "Sweet Jam Present [DEMO]"

#{:id=>52647188, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>500.0, :weight_unit=>"oz", :weight=>17.64}
product2 = Product.first_or_create(name:"Sweet Jam Present [DEMO]", width: 10.0, height: 10.0, weight_grams: 500.0, weight_unit: "oz", depth: 15.0, stock: 10)
product2.save!
# third Mixed Artificial Flowers [DEMO]
# {:id=>52647188, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>500.0, :weight_unit=>"oz", :weight=>17.64}
product3 = Product.first_or_create(name:"Mixed Artificial Flowers [DEMO]", width: 10.0, height: 10.0, weight_grams: 500.0, weight_unit: "oz", depth: 15.0, stock: 10)
product3.save!
#fourth "APPLE MAGIC MOUSE [DEMO]"
# {:id=>52647187, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>320.0, :weight_unit=>"oz", :weight=>11.29}
product4 = Product.first_or_create(name:"APPLE MAGIC MOUSE [DEMO]", width: 10.0, height: 10.0, weight_grams: 320.0, weight_unit: "oz", depth: 15.0, stock: 10)
product4.save!
#fifth "VEEQO SHORT SLEEVE T-SHIRT [DEMO]"

# {:id=>52647186, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>200.0, :weight_unit=>"oz", :weight=>7.05}
product5 = Product.first_or_create(name:"VEEQO SHORT SLEEVE T-SHIRT [DEMO]", width: 10.0, height: 10.0, weight_grams: 200.0, weight_unit: "oz", depth: 15.0, stock: 10)
product5.save!





# envelope width: 31.5, length: 24, height: 2;
Box1 = Box.first_or_create(name:'Envolope', width: 31.5, depth: 24, height:2, weight_resistance:'')
Box1.save!
#pak1 width:37, length:29.5, height: 5;
Box2 = Box.first_or_create(name:'Pak 1', width: 37, depth: 29.5, height:5, weight_resistance:'')
Box2.save!

#pak2 width:39, length:30.5, height: 2;
Box3 = Box.first_or_create(name:'Pak 2', width: 39, depth: 30.5, height:2, weight_resistance:'')
Box3.save!

#pak3 width:44.5, length:52.5, height: 5;
Box4 = Box.first_or_create(name:'Pak 3', width: 44.5, depth: 52.5, height:5, weight_resistance:'')
Box4.save!

#pak4 width:32, length:26, height: 2;
Box5 = Box.first_or_create(name:'Pak 4', width: 32, depth: 26, height:2, weight_resistance:'')
Box5.save!

#tube width:15, length:15, height: 96.5;
Box6 = Box.first_or_create(name:'Tube', width: 15, depth: 15, height:96.5, weight_resistance:'')
Box6.save!

#10kg Box width:40, length:33, height: 25;
Box7 = Box.first_or_create(name:'10kg Box', width: 40, depth: 33, height:25, weight_resistance:10000)
Box7.save!

#25kg Box width:55, length:42, height: 33;
Box8 = Box.first_or_create(name:'25kg Box', width: 55, depth: 42, height:33, weight_resistance:25000)
Box8.save!

#Small BOX 1 width:31, length:27, height: 3;
Box9 = Box.first_or_create(name:'Box 1', width: 31, depth: 27, height:3, weight_resistance:'')
Box9.save!

#Small Box2 width:28, length:22, height: 10;
Box10 = Box.first_or_create(name:'Box 2', width: 28, depth: 22, height:10, weight_resistance:'')
Box10.save!

#Medium Box1 width:33, length:29, height: 5;
Box11 = Box.first_or_create(name:'Medium Box 1', width: 33, depth: 29, height:5, weight_resistance:'')
Box11.save!

#Medium BOX2 width:28, length:22, height: 10;
Box12 = Box.first_or_create(name:'Medium Box 2', width: 39, depth: 22, height:10, weight_resistance:'')
Box12.save!

#Large BOX1 width:44, length:31, height: 7.5;
Box13 = Box.first_or_create(name:'Large Box 1', width: 39, depth: 31, height:7.5, weight_resistance:'')
Box13.save!

#Large Box2 width:28, length:22, height: 19;
Box14 = Box.first_or_create(name:'Large Box 2', width: 28, depth: 22, height:19, weight_resistance:'')
Box14.save!

#EXTRA LARGE BOX width:29, length:27, height: 28;
Box15 = Box.first_or_create(name:'Extra Large Box', width: 29, depth: 27, height:28, weight_resistance:'')
Box15.save!

#EXTRA LARGE BOX width:39, length:35, height: 70;

Box16 = Box.first_or_create(name:'Extra Large Box2', width: 39, depth: 35, height:70, weight_resistance:'')
Box16.save!


#Creating ordes

order1 = Order.create()
order1.save!

order2 = Order.create()
order2.save!

order3 = Order.create()
order3.save!

order4 = Order.create()
order4.save!

order5 = Order.create()
order5.save!

order6 = Order.create()
order6.save!


# creating Ordes_to_products

orders_to_products1 = OrdersToProducts.first_or_create(quantity: 2, product_id: 1, order_id: 1, unit_price: 10 )
orders_to_products1.save!


orders_to_products2 = OrdersToProducts.first_or_create(quantity:1, product_id:2, order_id:1, unit_price:10 )
orders_to_products2.save!

orders_to_products3 = OrdersToProducts.first_or_create(quantity:2, product_id:3, order_id:2, unit_price:10 )
orders_to_products3.save!

orders_to_products4 = OrdersToProducts.first_or_create(quantity:2, product_id:4, order_id:3, unit_price:10 )
orders_to_products4.save!

orders_to_products5= OrdersToProducts.first_or_create(quantity:2, product_id:5, order_id:4, unit_price:10 )
orders_to_products5.save!

orders_to_products6 = OrdersToProducts.first_or_create(quantity:2, product_id:5, order_id:5, unit_price:10 )
orders_to_products6.save!

orders_to_products7 = OrdersToProducts.first_or_create(quantity:5, product_id:5, order_id:6, unit_price:10 )
orders_to_products7.save!
