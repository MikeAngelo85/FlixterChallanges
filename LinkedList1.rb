class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        data = LinkedListNode.new(value, @data)
        @data = data
    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        unless @data.nil?
            data_value = @data.value
            @data = @data.next_node 
        end
        return dta_value
    end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

def reverse_list(list)
    # ADD CODE HERE
    reversed_list = Stack.new

    while list
        # ADD CODE HERE
        reversed_list.push(list.value)
        list = list.next_node
    end
    # ADD CODE HERE
    return reversed_list.data
end

node1 = LinkedListNode.new(40)
node2 = LinkedListNode.new(100, node1)
node3 = LinkedListNode.new(7, node2)

print_values(node3)

puts "-------------"

revlist = reverse_list(node3)

print_values(revlist)