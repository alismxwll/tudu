require './lib/todo'

@list = []

def main_menu
  loop do
    puts "Press 'a' to add a task \nPress 'l' to list your tasks \nPress 'r' to remove a task\n"
    puts "Press 'x' to exit"
    main_menu = gets.chomp
    if main_menu == 'a'
      add_task
    elsif main_menu == 'l'
      list_tasks
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

  def add_task
    puts 'Enter a description of the task.'
    user_description = gets.chomp
    @list << Task.new(user_description)
    puts 'Task added.'
  end

  def list_tasks
    puts 'Here are all of your tasks: '
    @list.each do |task|
      puts task.description
    end
  end

  def remove_task
    @list.each do |task|
      puts task.description
    end
    puts 'Enter the task you want to delete.'
    user_delete = gets.chomp
     @list.reject! {|task| user_delete == task.description}
    puts "Task removed"
  end

main_menu
