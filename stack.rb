# Stack using Array
class Stack
	def initialize
		@stack = Array.new(5)
		@current = 0
	end

	def push(value)
		if @current >= @stack.length
			p "Stack is full. Value can not be added" 
		else
			@stack[@current] = value
			p "Value #{value} pushed to stack successfully"
			@current += 1
		end

	end

	def pop
		if @current == 0
			p "Stack is empty"
		else
			p "Value #{@stack[@current - 1]} popped from stack successfully"
			@stack.delete_at(@current - 1)
			@current -= 1
		end
	end

	def print
		p @stack
	end
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
stack.push(6)
stack.print
(1..6).each do 
	stack.pop 
end
