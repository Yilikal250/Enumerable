require_relative 'enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end
list = MyList.new(1, 2, 3, 4)

puts(list.all_method? { |i| i < 5 })
puts(list.any_method? { |i| i > 5 })
puts(list.any_method? { |e| e == 2 })
puts(list.any_method? { |e| e == 5 })
p(list.filter_method(&:even?))
