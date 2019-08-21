defmodule Hounddy.Accounts.Login_request do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Accounts.User

  schema "login_requests" do
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(login_request, attrs) do
    login_request
    |> cast(attrs, [])
    |> validate_required([])
  end
end
