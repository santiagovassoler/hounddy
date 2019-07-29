defmodule Hounddy.Repo do
  use Ecto.Repo,
    otp_app: :hounddy,
    adapter: Ecto.Adapters.Postgres
end
