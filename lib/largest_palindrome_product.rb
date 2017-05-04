def largest_palindrome_product
  range = (100..999)
  largest = 0
  range.each do |num|
    range.each do |num_2|
      product = num * num_2
      if product.to_s == product.to_s.reverse
        largest = product if product > largest
      end
    end
  end
  largest
end



def time
  start = Time.now
  yield
  puts Time.now - start
end
