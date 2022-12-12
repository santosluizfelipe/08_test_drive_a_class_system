class TodoList
  def initialize
    @incomplete = []
    @complete = []
  end

  def add(todo) 
    @incomplete << todo
  end

  def incomplete
    return @incomplete
  end

  def complete
    @complete
  end

  def give_up!
    # marks all as complete
  end
end