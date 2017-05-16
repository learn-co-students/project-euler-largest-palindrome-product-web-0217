# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    max = 0
    (900..999).each do |num_1|
      (900...num_1).each do |num_2|
        if((num_1 * num_2).to_s.split('') == (num_1 * num_2).to_s.split('').reverse)
          max = num_1 * num_2
        end
      end
    end
    max
  end
end
