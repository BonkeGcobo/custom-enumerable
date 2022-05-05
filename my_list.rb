$LOAD_PATH << '.'
require 'my_enumerable'

class MyList
  include MyEnumerable
  attr_accessor :list

  def initialize(*list)
    @list = list
  end

  def each
    @list.length.times do |i|
      yield @list[i]
    end
  end
end
