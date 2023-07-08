# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# examples: 
require 'pry'

def staggered_case(str)
  out_arr = str.chars 
  type = "up"
  out_arr.each_with_index do |val, spot|
    # binding.pry
    if (val == " ") || (val.to_i.to_s == val)
      next
    elsif type == "up"
      val.upcase!
      type = "down"
    elsif type == "down"
      val.downcase!
      type = "up"
    else
      next
    end
  end

  out_arr.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('I Love Launch School!')
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ALL CAPS')
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case('ignore 77 the 444 numbers')