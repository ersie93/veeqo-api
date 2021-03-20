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

product1 = Product.create(name:"Herbal Shampoo [DEMO]", width: 10.0, height: 10.0, weight_grams: 425.0, weight_unit: "oz", depth: 15.0, stock: 10)
product1.save!
#second "Sweet Jam Present [DEMO]"

#{:id=>52647188, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>500.0, :weight_unit=>"oz", :weight=>17.64}
product2 = Product.create(name:"Sweet Jam Present [DEMO]", width: 10.0, height: 10.0, weight_grams: 500.0, weight_unit: "oz", depth: 15.0, stock: 10)
product2.save!
# third Mixed Artificial Flowers [DEMO]
# {:id=>52647188, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>500.0, :weight_unit=>"oz", :weight=>17.64}
product3 = Product.create(name:"Mixed Artificial Flowers [DEMO]", width: 10.0, height: 10.0, weight_grams: 500.0, weight_unit: "oz", depth: 15.0, stock: 10)
product3.save!
#fourth "APPLE MAGIC MOUSE [DEMO]"
# {:id=>52647187, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>320.0, :weight_unit=>"oz", :weight=>11.29}
product4 = Product.create(name:"APPLE MAGIC MOUSE [DEMO]", width: 10.0, height: 10.0, weight_grams: 320.0, weight_unit: "oz", depth: 15.0, stock: 10)
product4.save!
#fifth "VEEQO SHORT SLEEVE T-SHIRT [DEMO]"

# {:id=>52647186, :width=>10.0, :height=>10.0, :depth=>15.0, :dimensions_unit=>"cm", :weight_grams=>200.0, :weight_unit=>"oz", :weight=>7.05}
product5 = Product.create(name:"VEEQO SHORT SLEEVE T-SHIRT [DEMO]", width: 10.0, height: 10.0, weight_grams: 200.0, weight_unit: "oz", depth: 15.0, stock: 10)
product5.save!
