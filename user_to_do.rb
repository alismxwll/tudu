require './lib/todo'
require './lib/list'

@list_array = []
@list = []

def main_menu
  loop do
    puts "Press 'a' to add a list\nPress 't' to add a task \nPress 'r' to remove a task \nPress 'l' to show your lists \nPress 's' to show your tasks \n"
    puts "Press 'x' to exit"
    main_menu = gets.chomp
    if main_menu == 'a'
      create_list
    elsif main_menu == 'l'
      show_lists
    elsif main_menu == 's'
      show_tasks
    elsif main_menu == 't'
      create_task
    elsif main_menu == 'r'
      remove_task
    elsif main_menu == 'x'
      puts 'Have a good day!'
      exit
    else
      puts 'Sorry, that was not a valid option'
    end
  end
end

  def create_list
    puts 'Please enter list description.'
    user_description = gets.chomp
    @list_array << List.new(user_description)
    puts "New list created"
  end

  def show_lists
    puts 'Here are all of your lists: '
    @list_array.each do |list|
      puts list.create_list
    end
  end

  def create_task
    puts 'What list would you like to add your task to?'
    user_input = gets.chomp
    @list_array.each do |list|
      if user_input == list.create_list
      end
    end
    puts 'Enter a description of the task.'
    user_description = gets.chomp
    @list << Task.new(user_description)
    puts 'Task added.'
  end

  def show_tasks
    puts 'What list would you like to review?'
    user_input = gets.chomp
    @list_array.each do |list|
      if user_input == list.create_list
        puts 'Here are all of your tasks for that list: '
        @list.each do |task|
          puts task.description
        end
      end
    end
  end

  def list_tasks
    puts 'Here are all of your tasks: '
    @list.each do |task|
      puts task.description
    end
  end

  def remove_task
    puts 'What list would you like to remove your task from?'
    user_input = gets.chomp
    @list_array.each do |list|
      if user_input == list.create_list
      end
    end
    puts 'Which task do you want to delete.'
    @list.each do |task|
      puts task.description
    end
    user_delete = gets.chomp
      @list.reject! {|task| user_delete == task.description}
    puts "Task removed"
  end

main_menu
