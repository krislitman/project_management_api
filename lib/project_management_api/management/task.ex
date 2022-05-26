defmodule ProjectManagementApi.Management.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do


    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [])
    |> validate_required([])
  end
end
