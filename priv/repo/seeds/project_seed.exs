alias ProjectManagementApi.Repo
alias ProjectManagementApi.Management.Project

defmodule CreateProjects do
    def create_projects_loop(n) when n <= 1 do
       Repo.insert! %Project{
            title: Faker.Company.bs(),
            description: Faker.Company.bullshit()
        }
    end

    def create_projects_loop(n) do
       Repo.insert! %Project{
            title: Faker.Company.bs(),
            description: Faker.Company.bullshit()
        }
        create_projects_loop(n - 1)
    end
 end

CreateProjects.create_projects_loop(10)
