class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(new_node)
        @parent = nil
        @children = []
        @value = new_node
    end 

    def parent=(other_node)
        if @parent != nil 
            @parent.children.delete(self)
        end 

        @parent = other_node
            
        if @parent != nil
           @parent.children << self
        end
    end

    def add_child(child_node)
        if !@children.include?(child_node)
            child_node.parent = self
        end
    end 

    def remove_child(child_node)
        if @children.include?(child_node)
            child_node.parent = nil
        else 
            raise error
        end 
    end 

    def dfs(target_value)
        return self if self.value == target_value
        return nil if self.children.length == 0

        self.children.each do |child|
            result = child.dfs(target_value)
            return result unless result.nil?
        end 
        
        nil

    end 

    def bfs(target_value)
        queue = [self]
        until queue.empty?
            node_removed = queue.shift
            return node_removed if node_removed.value == target_value
            # node_removed.children.each do |child|
            #     queue << child
            # end
            kids = node_removed.children
            queue += kids
        end
        nil
    end
end