defmodule Hounddy.Accounts.Session do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sessions" do
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(session, attrs) do
    session
    |> cast(attrs, [])
    |> validate_required([])
  end
end
