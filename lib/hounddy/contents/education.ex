defmodule Hounddy.Contents.Education do
  use Ecto.Schema
  import Ecto.Changeset

  schema "educations" do
    field :city, :string
    field :country, :string
    field :institution_name, :string
    many_to_many :candidate, Hounddy.Profiles.Candidate, join_through: "candidate_educations"
    timestamps()
  end

  @doc false
  def changeset(education, attrs) do
    education
    |> cast(attrs, [:institution_name, :city, :country])
    |> validate_required([:institution_name, :city, :country])
    |> unique_constraint(:institution_name)
    |> unique_constraint(:city)
    |> unique_constraint(:country)
  end
end
