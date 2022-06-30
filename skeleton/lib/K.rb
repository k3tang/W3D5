

class KnightPathFinder

    def self.root_node
        @initial_pos = position 
    end 

    def self.valid_moves(position)
        row, col = position
        deltas= [[1,2],[2,1],[2,-1],[1,-2]]
        pos_pos = deltas.map do |subarr|
            dx, dy = subarr
            [row + dx , col + dy]
        end 

        neg_pos = deltas.map do |subarr|
            dx, dy = subarr
            [row - dx , col + dy]
        end

        return pos_pos + neg_pos   
    end 

    def initialize(position, target)
        @position = position 
        @board = Array.new(8){Array.new(8)}
    end 

    def new_move_positions(position)
        @considered_pos = [position]
        new_pos = KnightPathFinder.valid_moves(position).reject do |pos|
             @considered_pos.include?(pos)
        end 
        @considered_pos += new_pos
        return new_pos
    end 

    def build_move_tree(position, target)
        parent_node = PolyTreeNode.new(position)
        queue = [parent_node]
        while !queue.empty?
        self.new_move_positions(position).each do |move|
             parent_node.children << PolyTreeNode.new(move)
             

        end 


    end 
end




      

