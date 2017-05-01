def largest_palindrome_product
  max = 0
  (100..999).each do |first|
    (100..999).each do |second|
      product = first * second
      if product.to_s == product.to_s.reverse && product > max
        max = product
      end
    end
  end
  max
end
