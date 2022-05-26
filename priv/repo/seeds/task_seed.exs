alias ProjectManagementApi.Repo
alias ProjectManagementApi.Management.Task


Repo.insert! %Task{
    name: "Aspen Count 1",
    effort: 2,
    notes: "Set 10 cameras",
    finished: false,
    project_id: 3
}

Repo.insert! %Task{
    name: "Aspen Count 2",
    effort: 5,
    notes: "Set 15 cameras & 10 tubes",
    finished: false,
    project_id: 3
}

Repo.insert! %Task{
    name: "Parking Study 1",
    effort: 3,
    notes: "6am-10pm",
    finished: false,
    project_id: 4
}

Repo.insert! %Task{
    name: "Parking Study 2",
    effort: 5,
    notes: "11pm-3am",
    finished: false,
    project_id: 4
}

Repo.insert! %Task{
    name: "Cool task",
    effort: 1,
    notes: "chill",
    finished: false,
    project_id: 1
}
