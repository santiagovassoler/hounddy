defmodule Hounddy.Accounts.Session do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sessions" do
    belongs_to :user, Hounddy.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(session, attrs) do
    session
    |> cast(attrs, [])
    |> validate_required([])
  end
end
