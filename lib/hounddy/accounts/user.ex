defmodule Hounddy.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :full_name, :string
    field :phone_number, :string
    field :pic_url, :string
    field :username, :string
    has_one(:candidate, Hounddy.Profiles.Candidate)
    has_one(:recruiter, Hounddy.Profiles.Recruiter)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :full_name, :email, :phone_number, :pic_url])
    |> validate_required([:username, :full_name, :email, :phone_number, :pic_url])
    |> unique_constraint(:username)
    |> unique_constraint(:email)
  end
end
