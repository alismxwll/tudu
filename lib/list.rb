class List
  def initialize(category)
    @category = category
    @tasks = []
  end

  def category
    @category
  end

  def tasks
    @tasks
  end

  def sort_priority
    @tasks.sort_by {|task| task.priority}
  end

  def get_task(task_object)
    @tasks << task_object
  end
end
