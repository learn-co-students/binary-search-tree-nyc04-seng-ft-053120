class BST
    attr_accessor :data, :left, :right

    def initialize(data)
        @data = data
    end

    def insert(data)
        if data <= @data
            @left ? @left.insert(data) : @left = BST.new(data)
        else
            @right ? @right.insert(data) : @right = BST.new(data)
        end
    end

end