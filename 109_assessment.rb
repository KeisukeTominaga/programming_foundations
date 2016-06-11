require "pry"
=begin
# Quesion 1
This is re-assigning the new value 2 to the local valuable str.
From indide the do end block, it is possible to access to the local valuable decleard outsid the block.
puts method is called after the re-assingment. So the valuable str is pointing 2.

# Quesion 2
The local valuable str is decleard in side the loop do end block.
From the outsite do end scope, it is not possible to access to a valuable decleard inside do end scope.
That is why, the code raise undefined local variable or method error.

# Question 3
I cannot say certan whether this will wor or not.
Before the loop do end block, if the valuable str is decleared, the puts method can access to the str valuable.
If not, it raises undefined local valuable or method error.

# Quesion 4
str is called inside a method. From inside a method it does not have access to a local valuable decleard outside the method.
That is why it reaises ndefined local valuable or method error.

# Quesion 5
the two str local valuables are different. They do not share the same scope.
inside the method, it assign string "world" to str local valuable.
When a_method is called, the assinment is being done and it return "world", 
however, it does not output anything.
when puts str is called, it access to the line 1 and output "hello" and return nil
    
# Quesion 6
In line, b is potinting "hello"
in line 3, new string "hi" is assined to the local valuable a, however, it does not make any change to the fact that b is pointing "hellow"
So, when it called in line 7, b is still pointing "hello"

# Quesion 7
# of variables: 4 (a, b, c, d)
# of objects: 2 ("hello", "world")
a, b, c, d are all variables because something are assined to them.

Mutating method Arguments.
# Quesion 1
Last line, greeting is poinding "hello" as written in line 5.
here it is only pointing to the valuable and this line does not ivoke change method.
line 6 returns "hellow world", howeve, it does not mutate greeting.
So, line 8 still return "hello"

# Quesion 2
the << method is mutating param argument which are passed at line 6 and is poting "hello"
after change method executeed in line 6, the greeting local valuable is mutaged to "hello world"

# Quesion 3
1 hour
in the Line 2, "hi" is assined to local valuable param. THis is not mutating the object passed by the method.
It creates a new local valuable and assiging "hi"
in line 9, when greeting is called, since it was not mutated, with its scope, it is still pointing to "hello"
=end
# Quesion 4
in line 1, the change method receive greeting argument
in line 2, however, here it is creating a new local valuable and assing "greeting". The param is different object from line 1 param.
in line 3, param is the same oject as the line 2. << method mutating the params so here params should be "greeting hey"
in line 4, just like the line 2, this is an assinment. param here is different object and pointing only "hi"
in line 5, just like the line 3, it is mutading line 4 params, so it will be "hi world"
the method def change does not mutate what greeting valuable pointing. 
So in line 11, it outputs "hello"

Working with Collections
# Quesion 1
Array#map takes a block. Ruby iterates through the object and it returns a new aray with what is executed in the block.

# Quesion 2
Array#select takes a block. Inside the block, we need to specify a condition that return true or false. Ruby iterate through the object and it picks elements meeting the condision specified inside the block and return them with a new array.

# Quesion 3
The first one iterates each element and adding 1 to each elenet. It retun with a new aray.
The second one iterates each element and adding 1 to each element and assining the sum to the elemetn. Then, it returns with a new array.

First one is preferable. It read clearer.

Quesion 4
what Array#map does is putting executin result into a new array and return it. Execusion result for each iteration in this case is n > 2 and the return value is either true or false.
That's why you see a awway containing booleans as the returned result.

Quesion 5
Inside the code block, whatever the execlusion result in the final line will be the retun value.
In this case, puts n returns nil.
Since the block iterates 3 times and map method retun the result with a new array, you see the result [nil, nil, nil]

Quesion 6
arr is [1, 2, 3].
what is happenin here is that select method iterates though each array elements and see if the execution result inside the block is true or false.
if true, it will add the element into a new array. 
In this case, n + 2 is evaluated true in each iteration, so it returns a new array containing [1, 2, 3]

Quesion 7
aray is []
Since each execution result in the block is nil (puts returns nil), each iteration is evaluated as false.
As a result, no elements are selected and it only return an empty array.

str = 1

  loop do
    str = 2
    break
  end

  puts str
  
a = "abcde"
array = a.split(//)
# ["a", "b", "c", "d", "e"] 

reversed = []

array.map do |a|
  reversed.unshift(a)
end

reversed.join