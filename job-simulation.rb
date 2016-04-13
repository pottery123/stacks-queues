require './Stack.rb'
require './Queue.rb'

class Jobs
  def initialize
    @waitlist = waitlist

  end

  def wait(*people)

    @jobs = Stack.new
    @waitlist = Queue.new
    first_six = people.first(6)
    remaing_people = people - first_six


    first_six.each do |six|
      @jobs.push(six)
    end

    remaing_people.each do |remaining|
      @waitlist.enqueue(remaining)
    end




    def three_months
      def roll
        rand(1...6)
      end

      r = roll
      r.times do
        a = @jobs.pop
        @waitlist.enqueue(a)
      end
      r.times do
        @jobs.push(@waitlist.dequeue)
      end

    end


  end


#     fired = Stack.new.push(hired_list).flatten.pop(rand(1...6))
#     waiting_list = Stack.new.push(fired).flatten
#     fired.push(waiting_list).flatten







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
