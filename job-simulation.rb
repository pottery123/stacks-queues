require './Stack.rb'
require './Queue.rb'



def wait(*hired_list)
    fired = Stack.new.push(hired_list).flatten.pop(rand(1...6))
    waiting_list = Stack.new.push(fired).flatten
    fired.push(waiting_list).flatten
end






=begin

people = Stack.new.push(wait).flatten.pop(rand(1..6))
people.push(people)
 I need a die between 1 and 6
def roll
 rand(1..6)
 end

 I will need to capture the return value of the dice roll
 and use that value for the hiring and firing

 creat a waiting list probably an array most likely

 def waiting_list(*wait)

 people = Stack.new.push(wait)
 people.flatten
  people.pop(rand(1..6))
 end

def wait(*wait)
 people = Stack.new.push(wait).flatten.pop(rand(1..6))
 people.push(people).flatten
end

hired_list = [1,2,3,4,5]
waiting_list = [1,2,3,4,5,6]
