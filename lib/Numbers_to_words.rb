class Fixnum
  define_method(:Numbers_to_words) do

    digits = {"0" => "zero",
              "1" => "one",
              "2" => "two",
              "3" => "three",
              "4" => "four",
              "5" => "five",
              "6" => "six",
              "7" => "seven",
              "8" => "eight",
              "9" => "nine",
              "10" => "ten",
              "11" => "eleven",
              "12" => "twelve",
              "13" => "thirteen",
              "14" => "fourteen",
              "15" => "fifteen",
              "16" => "sixteen",
              "17" => "seventeen",
              "18" => "eighteen",
              "19" => "nineteen"}

    tens = {"2" => "twenty",
            "3" => "thirty",
            "4" => "forty",
            "5" => "fifty",
            "6" => "sixty",
            "7" => "seventy",
            "8" => "eighty",
            "9" => "ninety"}

    if digits.include?(self.to_s)
      final_string = self.ones_teens_logic()

    else
      number_array = self.to_s.split(//) #breaking number array into string
      array_length = number_array.length()
        if array_length == 2
          tens_place = tens.fetch(number_array[0])
          ones_place = digits.fetch(number_array[1])
          final_string = [tens_place, ones_place].join(' ')
        elsif array_length == 3
          hundreds_place = [number_array[0].to_i.ones_teens_logic(), "hundred"].join(' ')
            if number_array[1] == 1
              teens = [number_array[1], number_array[2]].join.ones_teens_logic()
              final_string = [hundreds_place, teens].join(' ')
            elsif number_array[1] == 0
              ones_place = digits.fetch(number_array[2])
              final_string = [hundreds_place, ones_place].join(' ')
            else
              tens_place = tens.fetch(number_array[1])
              ones_place = digits.fetch(number_array[2])
              final_string = [hundreds_place, tens_place, ones_place].join(' ')
            end
        end

    end
    final_string
  end
end
