defmodule Hounddy.Contents.Candidate_education do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidate_educations" do
    field :completed_at, :integer
    belongs_to :candidate, Hounddy.Profiles.Candidate
    belongs_to :education, Hounddy.Contents.Education

    timestamps()
  end

  @doc false
  def changeset(candidate_education, attrs) do
    candidate_education
    |> cast(attrs, [:completed_at])
    |> validate_required([:completed_at])
  end
end
