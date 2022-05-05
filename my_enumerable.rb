module MyEnumerable
  def all?(&block)
    each do |element|
      return false unless block.call(element)
    end
    true
  end
end
