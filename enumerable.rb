module MyEnumerable
    def all_method?
      list.each do |e|
        return false unless yield e
      end
      true
    end
  
    def any_method?
      list.each do |e|
        return true if yield e
      end
      false
    end
  
    def filter_method
      result = []
      list.each do |e|
        result << e if yield e
      end
      result
    end
end