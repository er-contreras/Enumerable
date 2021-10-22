module MyEnumerable
  def all?
    if block_given?
      arr = []
      list.each do |e|
        arr << yield(e)
      end
      res = arr.include? false
      p !res
    else
      p 'Block needed'
    end
  end

  def any?
    if block_given?
      arr = []
      list.each do |e|
        arr << yield(e)
      end
      res = arr.include? true
      p res
    else
      p 'Block needed'
    end
  end

  def filter
    if block_given?
      arr = []
      list.each do |e|
        arr << e if yield(e)
      end
      p arr
    else
      p 'Block needed'
    end
  end
end
