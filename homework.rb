class Stack 
    def initialize 
        @stack = [] 
        @size = 0
    end 

    def push(el) 
        @stack << el 
        size += 1
    end 

    def pop 
        @stack.pop
        @size -= 1 unless @size == 0 
    end 

    def peek 
        @stack[0]
    end 

    def empty? 
        @size == 0
    end 

    def inspect # overwrite inspect so that you cannot use p, and then see the whole stack 
        "#<stack:#{self.object_id}"
    end 
end 

class Queue 

    def initialize 
        @stack = []
        @size = 0 
    end 
v
    def enqueue(el)
        inner_array.unshift(ele)
        @size += 1
        self # will return self to keep it protected, otherwise, it can return the inner_array
    end 
    
    def dequeue
        self.size -= 1 unless self.size == 0 # cannot use just "size" because ruby prioritizes invoking a new variable for size = size - 1 
        inner_array.pop
    end 

    def peek
        inner_array.dup #want to protect the inner_array from being manipulated 
    end 
    
    private 
    attr_reader :inner_array
    attr_accessor :size 
end 

class Map 
    def initialize(array)
       @array = array
    end 

    def set(key, value)
        if array.flatten.include?(key)
            array[array.index(key)][1] = value
        else array << [key, value]
    end 

    def get(key)
        array.each do |subarr|
            subarr.each do |ele|
                if subarr.include?(key)
                    return subarr
                end 
            end 
        end 
    end 

    def delete(key) 
        array.each do |subarr|
            deleted = subarr.reject {|ele| subarr.include?(key)} 
        end 
        deleted
    end 

    def show
        array.each do |subarr|
            p subarr
        end 
    end 
end 

class Node 

    attr_reader :value, :children

    def initialize(value, children = [])
        @value = value 
        @children = children 
    end 


end 


d = Node.new("d")
e = Node.new("e")
f = Node.new("f")
g = Node.new("g")
b = Node.new("b", [d,e]) # this is now a parent node with children nodes d,e 
c = Node.new("c", [f,e])
a = Node.new("a", [b,c]) # in order to traverse, only need access to node a   





