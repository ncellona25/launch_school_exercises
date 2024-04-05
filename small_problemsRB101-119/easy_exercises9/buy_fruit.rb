def buy_fruit(arr)
  result = []
  arr.each do |subarr|
    subarr[-1].times do 
      result << subarr[0]
    end
  end
  result
end
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

=begin
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten     #[fruit] * quantity => ['fruit', 'fruit',...]
end
=end