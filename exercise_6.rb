grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

def show_grocery(grocery_list)
  grocery_list.each do |grocery|
  puts '*' + grocery
  end 
  puts "There are " + grocery_list.length.to_s + " items you need to pick up."
end

grocery_list.push('rice')
show_grocery(grocery_list)

if grocery_list.include?("banana")
  puts "You need to pick up bananas."
else
  puts "You don't need to pick up bananas today."
end

puts

puts grocery_list[1]

puts

#grocery_list = grocery_list.sort
grocery_list.sort!
show_grocery(grocery_list)
puts

grocery_list.delete("salmon")
show_grocery(grocery_list)