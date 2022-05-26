defmodule ProjectManagementApi.Management.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :name, :string
    field :effort, :integer
    field :notes, :string
    field :finished, :boolean

    belongs_to :project, ProjectManagementApi.Management.Project

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :effort, :notes, :finished, :project_id])
    |> validate_required([:name])
  end
end
