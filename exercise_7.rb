=begin ### Useful Snippet of Hash ###
hash1 = Hash.new
hash1 # {}

puts hash1[:some_key] # nil

hash2 = Hash.new("banana")
puts hash2 # {}
puts hash2[:some_key] # "banana"
=end


def show_cohort(students)
  students.each do |cohort, population|
    puts cohort.to_s + ': ' + population.to_s + ' students'  
  end
end

students = {
  :cohort1 => 34,
  #"cohort2" => 42,
 #:cohort2 => 42,
   cohort2: 42,
  :cohort3 => 22
}

show_cohort(students)
puts

students[:cohort4] = 43
puts students.keys
puts

students.each do |cohort, population| 
  population *= 1.05
  students[cohort] = population
end

show_cohort(students)
puts

# students.delete("cohort2")
# students.delete(:cohort2)
students.delete(:cohort2)
show_cohort(students)
puts

total = 0.0
students.each_value {
  |population| total += population
}
puts "There are " + total.to_s + " students in all cohorts."