def calculation(num1, num2, operation)
  operations = {
    add: :+,
    subtract: :-,
    multiply: :*,
    divide: :/
  }

  method = operations[operation]

  if method
    if method == :/ && num2 == 0
      "Can't divide by zero"
    else
      num1.send(method, num2)
    end
  else
    "Invalid operation"
  end
end

while true
  puts "Please enter two numbers:"
  puts "Enter 'stop' to close program"
  num_one = gets.chomp
  break if num_one.downcase == 'stop'
  num_two = gets.chomp
  puts "Would you like to add, subtract, multiply, or divide?"
  operation = gets.chomp.downcase.to_sym
  if operation == :divide
    puts calculation(num_one.to_f, num_two.to_i, operation)
  else
    puts calculation(num_one.to_i, num_two.to_i, operation)
  end
end
