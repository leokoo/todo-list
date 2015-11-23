require 'csv'
class Task
	attr_accessor :name
	# We initialize as an instance var as class and global variables would not result in an object \^.^/
	def initialize(name)
		@name = name
	end
end

class List
	attr_accessor :file
	def initialize
		@file = 'todo.csv'
		@array = []
	end

#Listing out the task from the CSV file
	def tasks
		puts "Listing out the tasks.....\n\n"
    CSV.foreach(@file) do |row|
      task = Task.new(row)
      @array << task
    end
    p @array
  end

#Objects are now working
  def objectize
		puts "Listing out the tasks.....\n\n"
    CSV.foreach(@file) do |row|
      task = Task.new(row)
      @array << task
    end
    p @array
  end

#Now we're trying to put the new task into the add method
  def add(input)
  	p input
  end

  def delete
  end

  def save
  end

end

list = List.new
list.tasks
list.add(Task.new("Walk the dog"))


# What classes do you need?

# Remember, there are four high-level responsibilities, each of which have multiple sub-responsibilities:
# 1. Gathering user input and taking the appropriate action (controller)
# 2. Displaying information to the user (view)
# 3. Reading and writing from the todo.txt file (model)
# 4. Manipulating the in-memory objects that model a real-life TODO list (domain-specific model)

# Note that (4) is where the essence of your application lives.
# Pretty much every application in the universe has some version of responsibilities (1), (2), and (3).