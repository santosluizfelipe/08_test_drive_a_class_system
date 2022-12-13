require_relative "../lib/todo_list"
require_relative "../lib/todo"

RSpec.describe "todo_list" do
  context "adding items to todo list" do
    it "adding item to the todo list where the todos are NOT completed" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(my_todo.incomplete).to eq ["Walk the dog"]
    end

    it "should return an empty array for the complete todos" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(my_todo.complete).to eq [nil]
    end

    it "should return the todos where we've called the mark_done! method on it" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      first_todo.mark_done!
      expect(my_todo.complete).to eq ["Walk the dog"]
    end

    it "should toogle complete for all tasks when called give_up!" do 
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      second_todo = Todo.new("laundry")
      third_todo = Todo.new("cook dinner")
      my_todo.add(first_todo)
      my_todo.add(second_todo)
      my_todo.add(third_todo)
      my_todo.give_up!
      expect(my_todo.complete).to eq ["Walk the dog", "laundry", "cook dinner"]
    end

    it "should return empty array with incomplete tasks case called give up" do 
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      second_todo = Todo.new("laundry")
      third_todo = Todo.new("cook dinner")
      my_todo.add(first_todo)
      my_todo.add(second_todo)
      my_todo.add(third_todo)
      my_todo.give_up!
      expect(my_todo.incomplete).to eq [nil, nil, nil]
    end
  end
end
