require 'rspec'
require  'todo'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new'Go to Epicodus'
    test_task.should be_an_instance_of Task
  end
  it 'stores the task description and shows it to user' do
    test_task = Task.new'Go to Epicodus'
    test_task.description.should eq 'Go to Epicodus'
  end
  it 'allows user to remove an item from the list' do
    test_task = Task.new'Go to Epicodus'
    test_task.description.should eq 'Go to Epicodus'
    test_task.remove_task.should eq ''
  end
end

