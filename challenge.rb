class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end



class LinkedList
@head = nil
@tail = nil
@@size = 0 


  def add(number)
    node = Node.new(number, @tail)
    @@size += 1
    if @head.nil?
      @head = node
      return
    end
    new_node = @head
    until new_node.next_node.nil?
      new_node = new_node.next_node
    end
    new_node.next_node = node
  end

  def get(index)
  node = @head
  if @head.nil?
    return nil
  end
  if index == 0
  return @head.value
  else
    index.times do 
      node = node.next_node unless node.nil?
    end
    node.value unless node.nil?
 end

end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add(5)
list.add(5)
list.add(5)



puts list.get(0)


# => 5
