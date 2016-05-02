module Splitbar
  class Box
    attr_accessor :stock
    def initialize(length)
      @length = length
      @number_of = 0
      @stock = []
    end

    def find(length)
      return false if @stock.count == 0
      @stock.each_with_index do |s,i|
        if s.length >= length
          return @stock.delete_at i
        end
      end
      return false;
    end

    def pop(length)
      if bar = find(length)
        push bar.cut(length)
      else
        push Bar.new(@length).cut(length)
      end
    end

    def push(bar)
      @stock << bar
      @stock.sort!{|a,b|
        b.length <=> a.length
      }
    end
  end
end
