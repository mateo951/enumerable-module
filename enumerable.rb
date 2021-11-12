module MyEnumerable
  def all?
    response = false
    @list.each do |n|
      response = true if yield(n)
      return false unless yield(n)
    end
    response
  end

  def any?
    @list.each do |n|
      return true if yield(n)
    end
    false
  end
end
