defmodule Hounddy.Profiles.Recruiter do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recruiters" do
    field :user_id, :id
    field :company_id, :id

    timestamps()
  end

  @doc false
  def changeset(recruiter, attrs) do
    recruiter
    |> cast(attrs, [])
    |> validate_required([])
    |> unique_constraint(:user_id)
  end
end
