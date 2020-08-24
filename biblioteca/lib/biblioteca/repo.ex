defmodule Biblioteca.Repo do
  use Ecto.Repo,
    otp_app: :biblioteca,
    adapter: Ecto.Adapters.Postgres
end
