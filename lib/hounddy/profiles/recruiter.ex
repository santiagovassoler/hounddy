defmodule Hounddy.Profiles.Recruiter do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recruiters" do
    belongs_to :user, Hounddy.Profiles.User
    field :company_id, :id

    timestamps()
  end

  @doc false
  def changeset(recruiter, attrs) do
    recruiter
    |> cast(attrs, [:user_id])
    |> validate_required([user_id])
    |> unique_constraint(:user_id)
  end
end
