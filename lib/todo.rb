class Task
  def initialize(description)
    @description = description
    @remove_task = remove_task
    priority = 0
    @due_date
  end

  def weekday_hash
    days = {'Monday' => 1, 'Tuesday' => 2, 'Wednesday' => 3, 'Thursday' => 4, 'Friday' => 5, 'Saturday' => 6, 'Sunday' => 7}
  end

  def get_due_date(date)
    @due_date = date
  end

  def due_date
    @due_date
  end

  def description
    @description
  end

  def priority
    @priority
  end

  def get_priority(user_priority)
    @priority = user_priority.to_i
  end

  def remove_task
    @remove_task
  end
end

