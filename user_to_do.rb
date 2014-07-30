require './lib/todo'
require './lib/list'

@list_array = []
@list = []

def main_menu
  loop do
    puts "Press 'a' to add a list\nPress 'l' to show your lists \n"
    # Press 'r' to remove a task\n
    puts "Press 'x' to exit"
    main_menu = gets.chomp
    if main_menu == 'a'
      create_list
    elsif main_menu == 'l'
      show_lists
    # elsif main_menu == 't'
    #   list_tasks
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
  #   puts 'Type the name of the list you want to add a task to.'
  #   user_list_name = gets.chomp
  #   @list_array.each do |list|
  #     if user_list_name == list.create_list
  #       puts list.create_list
  # end

  def create_task
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
