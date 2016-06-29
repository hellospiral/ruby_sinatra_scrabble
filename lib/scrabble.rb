class String
  define_method(:scrabble) do
    input = self

    input.tr!('aeioulnrst', '1')
    input.tr!('dg', '2')
    input.tr!('bcmp', '3')
    input.tr!('fhvwy', '4')
    input.tr!('k', '5')
    input.tr!('jx', '8')
    input.tr!('qz', 'A')

    answer_array = input.split('')
    total = 0
    answer_array.each do |item|
      if item == "A"
        total += item.to_i(16)
      else
        total += item.to_i()
      end
    end
    total
  end
end
