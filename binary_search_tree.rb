class BST
    attr_accessor :data, :right, :left
    def initialize(data=nil)
        @data=data
    end
    def insert(value)
        if(!@data)
            @data=BST.new(value) 
        elsif(value<=@data)
            if(@left==nil)
                @left=BST.new(value)
            else
                @left.insert(value)
            end
        elsif(value>@data)
            if(@right==nil)
                @right=BST.new(value)
            else
                @right.insert(value)
            end
        end
    end
    def each(&block)
        if(@left) 
            left.each(&block)
        end
        block.call(@data)
        if(@right)
            right.each(&block)
        end
      end
end