defmodule ProjectManagementApi.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
        add :project_id, references(:projects)
        add :name, :string
        add :effort, :integer
        add :notes, :text
        add :finished, :boolean, default: false

        timestamps()
    end
  end
end
