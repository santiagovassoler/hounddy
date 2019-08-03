defmodule Hounddy.Content.Candidate_education do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidate_educations" do
    field :completed_at, :integer
    field :candidate_id, :id
    field :education_id, :id

    timestamps()
  end

  @doc false
  def changeset(candidate_education, attrs) do
    candidate_education
    |> cast(attrs, [:completed_at])
    |> validate_required([:completed_at])
  end
end
