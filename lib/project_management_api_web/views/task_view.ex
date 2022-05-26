defmodule ProjectManagementApiWeb.TaskView do
  use ProjectManagementApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :effort, :notes, :finished, :project_id]
end
