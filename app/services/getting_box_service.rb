module GettingBoxService
    class << self
        def get orders, orders_to_products, products

            # getting the quantity
            quantity_array = orders_to_products.map(&:quantity)

            #converting to hash,so i can pass key/value of quantity for each object
            products = products.map(&:attributes)

            index = 0

            while index < products.size
                products[index]['quantity'] = quantity_array[index]
                index += 1
            end


            weight_min = Array.new()
            products.map{|product|weight_min << product['weight_grams'] * product['quantity']}
            weight_min = weight_min.sum()

            volume_min = Array.new()

            products.map{|product| volume_min << product['height'] * product['width'] * product['depth'] * product['quantity']}

            volume_min = volume_min.sum()

            # Organizing the dimension by this logic depth must be the bigger, width second bigger and height the third smaller
            height_array = Array.new()
            width_array = Array.new()
            depth_array = Array.new()


            products.each do |product|
              dimension_array = product.values[2..4].sort
              product['height'] = dimension_array[0]
              product['width'] = dimension_array[1]
              product['depth'] = dimension_array[2]

              height_array += [product['height']] * product['quantity']
              width_array += [product['width']] * product["quantity"]
              depth_array += [product['depth']] * product['quantity']

            end



            # organized depth must be the bigger, width second bigger and height the third bigger


            min_width = width_array.sum()
            min_height = height_array.max()
            min_depth = depth_array.max()

            possible_box = Box.where("width > ?", min_width)
            possible_box = possible_box.reject{|box| box.height < min_height || box.depth < min_depth}

            # lets filter for the volume * 1.3 now, since the box must have an empty space for proper packagin.
            possible_box = possible_box.reject{|box| 1.3 * volume_min > box.height * box.depth * box.width}

            #filter by weigth
            # if weight_min >= 10000
            #     possible_box.select{|box| box.weight_resistance >= 10000}
            # end

            # if weight_min >= 25000
            #     possible_box.select{|box| box.weight_resistance >= 25000}
            # end

            possible_box = possible_box.sort_by{|box| box.height * box.depth * box.width}

            picked_box = possible_box[0]

            return picked_box
        end
    end
end
