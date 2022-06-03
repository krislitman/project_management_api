defmodule Projects.ProjectControllerTest do
    use ProjectManagementApiWeb.ConnCase

    test "Index renders all projects" do
        conn = build_conn()
        project = insert(:project)

        conn = get_conn, project_path(conn, :index)

        assert json_response(conn, 200) == %{
            "projects" => [%{
                "title" => project.title,
                "description" => project.description
            }]
        }
    end
end
