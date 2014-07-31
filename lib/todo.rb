class Task
  def initialize(description)
    @description = description
    @remove_task = remove_task
    @priority = []
  end

  def priority
    @priority
  end

  def get_priority(user_priority)
    @priority = user_priority.to_i
  end

  def description
    @description
  end

  def remove_task
    @remove_task
  end
end

