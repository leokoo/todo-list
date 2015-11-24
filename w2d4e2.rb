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

#Objectize is to take the CSV and put it in an @array
  def objectize
    CSV.foreach(@file) do |row|
      task = Task.new(row[0])
      @array << task
    end
  end

#Listing out the task from the CSV file
	def tasks
		puts "\nThe tasks!\n\n"
    @array.map do |row|
    	p row.name
    end
  end

#Now we're trying to put the new task into the add method
  def add(input)
  	@array << input
  	tasks
  end
#delete_at deletes the item at array num
  def delete(input)
  	@array.delete_at(input)
  	tasks
  end

  def save
  end
end

list = List.new
list.objectize
list.tasks
# list.add(Task.new("Walk the dog"))
list.delete(1)



# What classes do you need?

# Remember, there are four high-level responsibilities, each of which have multiple sub-responsibilities:
# 1. Gathering user input and taking the appropriate action (controller)
# 2. Displaying information to the user (view)
# 3. Reading and writing from the todo.txt file (model)
# 4. Manipulating the in-memory objects that model a real-life TODO list (domain-specific model)

# Note that (4) is where the essence of your application lives.
# Pretty much every application in the universe has some version of responsibilities (1), (2), and (3).