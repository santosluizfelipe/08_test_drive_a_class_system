class Todo
  def initialize(task)
    @task = task
  end

  def task
    return @task
  end

  def mark_done!
    done_tasks = []
    done_tasks << @task
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end