require("./todo.rb")

RSpec.describe"the task class" do
	before :each do
		@weekend = Task.new("Weekend tasks", "10/27/2015")
	end
	 	
	it "should create a unique id when we create a new task" do 
	 	expect( @weekend.id ).to eq(1)
    end

    it "should create a unique id when we create a new task" do

	 	expect( @weekend.description).to eq("Weekend tasks")
    end

    it "makes a task not completed by default" do 
    	expect(@weekend.complete?).to eq(false)
    end


end

 
# class TodoList
# 	def initialize(name)
# 		@name = name
# 		@tasks = []
# 	end

# 	def add_task(task)
# 		@tasks.push(task)
# 	end

# 	def delete_task(task)
# 		@task.delete(task)
# 	end

# 	# def reminder
		
# 	# end
# 	 def print_tasks
# 	 	puts "TodoList: #{@name}"
# 	 	@tasks.each do |i|
# 	 		puts "#{i.id} - Description: #{i.description}"
# 	 	end
# 	 end

# end


# id1 = Task.new("Buy vegs","incompleted", "10/27/2015")


# weekend = TodoList.new("Weekend tasks")
#  weekend.add_task(id1)
# weekend.print_tasks

