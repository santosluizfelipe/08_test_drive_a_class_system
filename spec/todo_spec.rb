require 'todo'

describe "Todo class" do 
  it "should return a string that represents a task" do
    new_todo = Todo.new("cook lunch")
    expect(new_todo.task).to eq "cook lunch"
  end

  it "should return the @complete variable to true when mark_done method is called" do 
    new_todo = Todo.new("cook lunch")
    expect(new_todo.mark_done!).to eq true
  end

  it "should return either true or false depending if the todos is completed or not" do 
    new_todo = Todo.new("cook lunch")
    expect(new_todo.done?).to eq false
  end

  it "should return either true or false depending if the todos is completed or not" do 
    new_todo = Todo.new("cook lunch")
    new_todo.mark_done!
    expect(new_todo.done?).to eq true
  end
end