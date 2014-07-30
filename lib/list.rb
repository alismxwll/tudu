class List
  def initialize(create_list)
    @create_list = create_list
    @tasks = []
  end

  def create_list
    @create_list
  end

  def add_task(input)
    @tasks << input
  end

  def tasks
    @tasks
  end
end
