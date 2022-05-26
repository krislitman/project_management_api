defmodule ProjectManagementApiWeb.TaskView do
  use ProjectManagementApiWeb, :view
  alias ProjectManagementApiWeb.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TaskView, "task.json")}
  end

  def render("show.json", %{task: task}) do
    %{data: render_one(task, TaskView, "task.json")}
  end

  def render("task.json", %{task: task}) do
    %{
      id: task.id,
      name: task.name,
      effort: task.effort,
      notes: task.notes,
      finished: task.finished,
      project_id: task.project_id
    }
  end
end
