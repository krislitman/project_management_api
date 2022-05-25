defmodule ProjectManagementApi.Repo do
  use Ecto.Repo,
    otp_app: :project_management_api,
    adapter: Ecto.Adapters.Postgres
end
