defmodule S2Demo.Repo do
  use Ecto.Repo,
    otp_app: :s2_demo,
    adapter: Ecto.Adapters.Postgres
end
