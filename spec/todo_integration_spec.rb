require_relative "../lib/todo_list"
require_relative "../lib/todo"

RSpec.describe "todo_list" do
  context "adding items to todo list" do
    it "adding item to do list" do
      my_todo = TodoList.new()
      first_todo = Todo.new("Walk the dog")
      my_todo.add(first_todo)
      expect(my_todo.incomplete).to eq [first_todo]
    end
  end
end
