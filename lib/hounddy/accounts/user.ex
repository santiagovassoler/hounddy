defmodule Hounddy.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hounddy.Profiles.{Candidate, Company}

  schema "users" do
    field :email, :string, unique: true
    field :full_name, :string
    field :phone_number, :string
    field :pic_url, :string
    field :username, :string, unique: true
    field :role, :string

    has_one(:candidate, Candidate)
    has_one(:company, Company)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :full_name, :email, :phone_number, :pic_url, :role])
    |> validate_required([:username, :full_name, :email, :phone_number, :pic_url, :role])
    |> unique_constraint(:users_email_username, name: :users_email_username_index)
  end
end
