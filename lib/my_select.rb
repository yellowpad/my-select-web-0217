

def my_select(collection)
 # your code here!
 if collection.length < 1
   puts "This block should not run!"
 else
   array = []
   i = 0
   while i < collection.length
     if yield collection[i]
       array.push(collection[i])
     end
     i += 1
   end
 end
 array
end

col = (1..5).to_a
my_select(col) do |n|
  n.even?
end
