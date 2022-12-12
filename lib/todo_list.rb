class TodoList
  def initialize
    @incomplete = []
  end

  def add(todo) 
    @incomplete << todo
  end

  def incomplete
    return @incomplete
  end

  def complete
    # returns complete
  end

  def give_up!
    # marks all as complete
  end
end