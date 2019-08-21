defmodule Hounddy.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hounddy.Accounts.{Session, Login_request}
  alias Hounddy.Profiles.{Candidate, Company}
  alias Hounddy.Jobs.{Job, User_job}

  schema "users" do
    field :email, :string
    field :full_name, :string
    field :phone_number, :string
    field :pic_url, :string
    field :username, :string
    field :role, :string

    has_one(:login_request, Login_request)
    has_one(:candidate, Candidate)
    has_many(:session, Session)
    has_one(:company, Company)
    has_many(:job, Job)
    has_many(:user_job, User_job)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :full_name, :email, :phone_number, :pic_url, :role])
    |> validate_required([:username, :full_name, :email, :phone_number, :pic_url, :role])
    |> unique_constraint(:users_email_username_role, name: :users_email_username_role_index)
  end
end
