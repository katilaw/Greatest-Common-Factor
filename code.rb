class Euclid
  def greatest_common_factor(number1, number2)
    unless number1.class == Fixnum && number1 > 0 && number2.class == Fixnum  && number2 > 2
      puts "This program only accepts postive numbers"
    else
      array = [number1, number2]

      until array.include?(0)
        if array.first - array.last > array.last
          array.unshift("#{array.first - array.last}".to_i)
          array.delete_at(1)
        else
          array.push("#{array.first - array.last}".to_i)
          array.delete_at(0)
        end
      end
      array.delete(0)
      puts array
    end
    puts "If `number1` is #{number1} and `number2` is #{number2}, the method would return #{array.first}."
  end
end

test = Euclid.new.greatest_common_factor('a','b')
test = Euclid.new.greatest_common_factor('-1','0')
test = Euclid.new.greatest_common_factor(8,4)
test = Euclid.new.greatest_common_factor(8,7)
test = Euclid.new.greatest_common_factor(81,18)
