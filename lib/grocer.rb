

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs
  collection.each do |v|
     if v[:item] == name
        return v 
      end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart.each do |element|
    element[:order] = 1
   end
 test = cart.each_with_object(Hash.new(0)) do |element,counts|
    counts[element] += 1
 end
 test2 = test.each do |k,v|
   k[:order] = v
 end
 test3=test2.keys
 p test3

end


  