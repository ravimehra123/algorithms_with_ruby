
class Node
	attr_accessor :next
	attr_reader   :value
 
	def initialize(value)
		@value = value
		@next  = nil

	end
end

class LinkedList
	def initialize(value)
		@head  = Node.new(value)
	end

	def append_node(target = nil, value)
		current = @head
	 
			while (current.next != nil)
				if current.value == target
				old_next       = current.next
				current.next      = Node.new(value)
				current.next.next = old_next
				return
				end
				current = current.next

			end
			current.next = Node.new(value)

	end

	def delete(value)
		current = @head
	 
			while (current.next != nil)
				if current.next.value == value
					current.next = current.next.next
				return
				end
				current = current.next
			end
	end


	def print_list
		elements = []
		current = @head
		while current.next != nil
			elements << current.value
			current = current.next
		end
		p elements << current.value
	end
end


linked_list = LinkedList.new(1)
(2..5).each do |node| linked_list.append_node(node) end


linked_list.print_list





























