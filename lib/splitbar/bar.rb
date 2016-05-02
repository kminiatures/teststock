module Splitbar
  class Bar
    attr_accessor :length, :parts
    def initialize(length)
      @length = length
      @parts = []
    end

    def cut(need_length)
      @parts << need_length
      @length -= need_length
      self
    end
  end
end
