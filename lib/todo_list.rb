class TodoList
  def initialize
    @my_todos = []
  end

  def add(todo) 
    @my_todos << todo
  end

  def incomplete
    return [] if @my_todos.empty?
    @my_todos.map { |todo|
      if todo.done? == false
        todo.task
      end
    }
  end

  def complete
    return [] if @my_todos.empty?
    @my_todos.map { |todo|
      if todo.done? == true 
        todo.task
      end
    }
  end

  def give_up!
    @my_todos.each(&:mark_done!)
  end
end