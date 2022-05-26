alias ProjectManagementApi.Repo
alias ProjectManagementApi.Management.Project


Repo.insert! %Project{
    title: "My first Elixir Project",
    description: "It is epic"
}

Repo.insert! %Project{
    title: "Turning Movement Count",
    description: "Out in Aspen, CO"
}

Repo.insert! %Project{
    title: "Parking Study",
    description: "In Omaha, NE"
}
