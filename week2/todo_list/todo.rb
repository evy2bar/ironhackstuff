class Task 

	attr_reader  :id , :description, :status, :due_date 
	@@actual_id = 1

	def initialize(description, due_date) #notes, category)
	@description = description
	@completed = false
	@due_date = due_date
	#@notes = notes
	#@category = category
	@id = @@actual_id
	@@actual_id += 1
	end 

	# def update
	# end

	def complete?
		# if @completed == true
		# 	return true
		# else 
		# 	return false
		#end
   		return @completed
	end
end


class TodoList
	def initialize(name)
		@name = name
		@tasks = []
	end

	def add_task(task)
		@tasks.push(task)
	end

	def delete_task(task)
		@task.delete(task)
	end

	# def reminder

	# end
	 def print_tasks
	 	puts "TodoList: #{@name}"
	 	@tasks.each do |i|
	 		puts "#{i.id} - Description: #{i.description}"
	 	end
	 end

end


# id1 = Task.new("Buy vegs","incompleted", "10/27/2015")


# weekend = TodoList.new("Weekend tasks")
#  weekend.add_task(id1)
# weekend.print_tasks




