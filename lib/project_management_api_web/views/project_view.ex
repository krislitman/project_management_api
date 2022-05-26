defmodule ProjectManagementApiWeb.ProjectView do
  use ProjectManagementApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]
end
