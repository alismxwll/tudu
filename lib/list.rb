class List
  def initialize(create_list)
    @create_list = create_list
    @tasks = []
  end

  def create_list
    @create_list
  end

  def tasks
    @tasks
  end

  def get_tasks(task_object)
    @tasks << task_object
  end
end
