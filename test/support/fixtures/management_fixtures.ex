defmodule ProjectManagementApi.ManagementFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProjectManagementApi.Management` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> ProjectManagementApi.Management.create_project()

    project
  end

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{

      })
      |> ProjectManagementApi.Management.create_task()

    task
  end
end
