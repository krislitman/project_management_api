defmodule ProjectManagementApi.ManagementTest do
  use ProjectManagementApi.DataCase

  alias ProjectManagementApi.Management

  describe "projects" do
    alias ProjectManagementApi.Management.Project

    import ProjectManagementApi.ManagementFixtures

    @invalid_attrs %{description: nil, title: nil}

    test "list_projects/0 returns all projects" do
      project = project_fixture()
      assert Management.list_projects() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Management.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      valid_attrs = %{description: "some description", title: "some title"}

      assert {:ok, %Project{} = project} = Management.create_project(valid_attrs)
      assert project.description == "some description"
      assert project.title == "some title"
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Management.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()
      update_attrs = %{description: "some updated description", title: "some updated title"}

      assert {:ok, %Project{} = project} = Management.update_project(project, update_attrs)
      assert project.description == "some updated description"
      assert project.title == "some updated title"
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Management.update_project(project, @invalid_attrs)
      assert project == Management.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Management.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Management.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Management.change_project(project)
    end
  end

  describe "tasks" do
    alias ProjectManagementApi.Management.Task

    import ProjectManagementApi.ManagementFixtures

    @invalid_attrs %{}

    test "list_tasks/0 returns all tasks" do
      task = task_fixture()
      assert Management.list_tasks() == [task]
    end

    test "get_task!/1 returns the task with given id" do
      task = task_fixture()
      assert Management.get_task!(task.id) == task
    end

    test "create_task/1 with valid data creates a task" do
      valid_attrs = %{}

      assert {:ok, %Task{} = task} = Management.create_task(valid_attrs)
    end

    test "create_task/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Management.create_task(@invalid_attrs)
    end

    test "update_task/2 with valid data updates the task" do
      task = task_fixture()
      update_attrs = %{}

      assert {:ok, %Task{} = task} = Management.update_task(task, update_attrs)
    end

    test "update_task/2 with invalid data returns error changeset" do
      task = task_fixture()
      assert {:error, %Ecto.Changeset{}} = Management.update_task(task, @invalid_attrs)
      assert task == Management.get_task!(task.id)
    end

    test "delete_task/1 deletes the task" do
      task = task_fixture()
      assert {:ok, %Task{}} = Management.delete_task(task)
      assert_raise Ecto.NoResultsError, fn -> Management.get_task!(task.id) end
    end

    test "change_task/1 returns a task changeset" do
      task = task_fixture()
      assert %Ecto.Changeset{} = Management.change_task(task)
    end
  end
end
