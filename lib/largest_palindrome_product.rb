def largest_palindrome_product
  product_array = []
  max = 0

  triple_array_1 = (100..999).to_a
  triple_array_2 = (100..999).to_a

  triple_array_1.each do |i|
    triple_array_2.each do |j|
      product_array << (i * j)
    end
  end

  product_array.each do |product|
    if (product.to_s == product.to_s.reverse) && (product > max)
      max = product
    end
  end

  return max
end
