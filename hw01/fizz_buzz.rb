
#initialize counter to keep track of and control the range of numbers to print 
counter = 0

# create the number variable to print out
num = 0


# controll the the top range to be 100, do the follwing sequences so long as counter is less than 100
while counter < 100 do

  num += 1 #increase the number variable each interval
  counter += 1 #increase the num variable each interval

    if num % 3 == 0 && num % 5 == 0  #if number is evenly divisble (no remainder) by 3 and 5 print "fizzbuzz"
      puts "fizzbuzz"

    elsif  #if number is evenly divisble by 3 only print "fizz"
    num % 3 == 0
      puts "fizz"

    elsif  #if number is evenly divisble by 5 only print "buzz"
    num % 5 == 0
      puts "buzz"
    else   #finally if number is not evenly divisble by 3, nor 5 print the variable num on each interval 
    puts num
  end
end




