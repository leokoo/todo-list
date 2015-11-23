require 'csv'

class List
	def initialize
		@file = 'todo.csv'
	end

	# def welcome
	# 	puts "Welcome to the ToDo List, alpha version 1!"
	# 	puts "Kindly choose your choice today :)"
	# end

	def tasks
		puts "Listing out the tasks"
    CSV.foreach(@file) do |row|
      puts row
      # a = row.to_hash
    end
  end

end

list = List.new
# list.welcome
list.tasks

# What classes do you need?

# Remember, there are four high-level responsibilities, each of which have multiple sub-responsibilities:
# 1. Gathering user input and taking the appropriate action (controller)
# 2. Displaying information to the user (view)
# 3. Reading and writing from the todo.txt file (model)
# 4. Manipulating the in-memory objects that model a real-life TODO list (domain-specific model)

# Note that (4) is where the essence of your application lives.
# Pretty much every application in the universe has some version of responsibilities (1), (2), and (3).