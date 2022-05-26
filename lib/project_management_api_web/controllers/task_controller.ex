defmodule ProjectManagementApiWeb.TaskController do
  use ProjectManagementApiWeb, :controller

  alias ProjectManagementApi.Management
  alias ProjectManagementApi.Management.Task

  action_fallback ProjectManagementApiWeb.FallbackController

  def index(conn, _params) do
    tasks = Management.list_tasks()
    render(conn, "index.json-api", data: tasks)
  end

  def create(conn, %{"task" => task_params}) do
    with {:ok, %Task{} = task} <- Management.create_task(task_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.task_path(conn, :show, task))
      |> render("show.json-api", data: task)
    end
  end

  def show(conn, %{"id" => id}) do
    task = Management.get_task!(id)
    render(conn, "show.json-api", data: task)
  end

  def update(conn, %{"id" => id, "task" => task_params}) do
    task = Management.get_task!(id)

    with {:ok, %Task{} = task} <- Management.update_task(task, task_params) do
      render(conn, "show.json-api", data: task)
    end
  end

  def delete(conn, %{"id" => id}) do
    task = Management.get_task!(id)

    with {:ok, %Task{}} <- Management.delete_task(task) do
      send_resp(conn, :no_content, "")
    end
  end
end
