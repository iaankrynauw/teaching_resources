defmodule TeachingResources.Repo do
  use Ecto.Repo,
    otp_app: :teaching_resources,
    adapter: Ecto.Adapters.Postgres
end
