defmodule Projoects.Factory do
    use ExMachina.Ecto, repo: ProjectManagementApi.Repo

    def project_factory do
        %Projects.Project{
            title: "Project Title",
            description: "Project description"
        }
    end
end
