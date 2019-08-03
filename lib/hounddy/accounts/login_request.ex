defmodule Hounddy.Accounts.Login_request do
  use Ecto.Schema
  import Ecto.Changeset

  schema "login_requests" do
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(login_request, attrs) do
    login_request
    |> cast(attrs, [])
    |> validate_required([])
  end
end
