;Stacking
class Stack
    def initialize(size)
        @maxSize = size
        @store = Array.new(@maxSize)
        @currPos = -1
    end
            
    def pop
       return nil if empty?
       popped = @store[@currPos]
       @store[@currPos] = nil
       @currPos = @currPos.pred
       popped
    end
              
    def push(element)
        return nil if (full? or element.nil?)
        @currPos = @currPos.succ
        @store[@currPos] = element
        self
    end
                
                            
    def size
        @maxSize
    end

    def look
        return nil if empty?
        @store[@currPos]
    end
                    
    private

    def full?
        (@currPos+1) == @maxSize
    end
 
    def empty?
        @currPos == -1
    end
end

#Queueing
class Queue
    def initialize(size)
        @size = size
        @store = Array.new(size)
        @num = 0
    end
            
    def dequeue
        return nil if @num == 0
        @num = @num.pred
        @store.delete_at(@num)
    end
              
    def enqueue(element)
        return nil if full? or element.nil?
        @num = @num.succ
        @store.unshift(element)
        self
    end
                
    def size
        @size
    end

    private

    def full?
        @num == @size
    end
                      
    def empty?
        @num == 0
    end
end
