class LargestPalindromeProduct
  attr_accessor :range, :answer

  def initialize
    @range = (100..999).to_a
    @answer = find_largest_palindrome
  end

  def find_largest_palindrome
    max = 0
    @range.each do |first|
      @range.each do |second|
        product = first * second
        if product.to_s == product.to_s.reverse && product > max
          max = product
        end
      end
    end
    max
  end


end
