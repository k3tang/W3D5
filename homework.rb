class Stack 
    def initialize 
        @stack = [] 
    end 

    def push(el) 
        @stack << el 
    end 

    def pop 
        @stack.pop
    end 

    def peek 
        @stack[0]
    end 
end 

class Queue 

    def initialize 
        @stack = []
    end 

    def enqueue(el)
        @stack << el
    end 
    
    def dequeue
        @stack.shift
    end 

    def peek
        @stack[0]
    end 
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





