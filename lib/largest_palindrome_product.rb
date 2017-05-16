# Implement your procedural solution here!
def largest_palindrome_product
  palindromes = []
  (900..999).each do |num_1|
    (900...num_1).each do |num_2|
      if((num_1 * num_2).to_s.split('') == (num_1 * num_2).to_s.split('').reverse)
        palindromes.push(num_1 * num_2)
      end
    end
  end
  palindromes.max
end
