require 'rspec'
require  'todo'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new'Go to Epicodus'
    test_task.should be_an_instance_of Task
  end
end

