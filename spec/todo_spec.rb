require 'rspec'
require 'todo'
require 'list'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new'Go to Epicodus'
    test_task.should be_an_instance_of Task
  end
  it 'stores the task description and shows it to user' do
    test_task = Task.new'Go to Epicodus'
    test_task.description.should eq 'Go to Epicodus'
  end
  it 'allows user to remove a task from a list' do
    test_task = Task.new'Go to Epicodus'
    test_task.remove_task.should eq nil
  end
end

describe List do
  it 'is initialized with an empty list of tasks' do
    test_list = List.new('Home')
    test_list.tasks.should eq []
  end
  it 'adds tasks to a list' do
    test_list = List.new('Home')
    test_task = Task.new('Clean')
    test_list.get_task(test_task)
    test_list.tasks.should eq [test_task]
  end
  it 'adds a priority to a task' do
    test_list = List.new('Home')
    test_task = Task.new('Clean')
    test_task.get_priority("1")
    test_task.priority.should eq 1
  end
  it 'sorts tasks based on their priority' do
    test_list = List.new('Home')
    test_task = Task.new('Clean')
    test_task.get_priority(3)
    test_task_two = Task.new('Sweep')
    test_task_two.get_priority(2)
    test_task_third = Task.new('Other')
    test_task_third.get_priority(5)
    test_list.get_task(test_task)
    test_list.get_task(test_task_two)
    test_list.get_task(test_task_third)
    test_list.sort_priority.should eq [test_task_two, test_task, test_task_third]
  end
end

