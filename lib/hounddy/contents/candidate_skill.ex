defmodule Hounddy.Contents.Candidate_skill do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidate_skills" do
    belongs_to :candidate, Hounddy.Profiles.Candidate
    belongs_to :skill, Hounddy.Contents.Skill

    timestamps()
  end

  @doc false
  def changeset(candidate_skill, attrs) do
    candidate_skill
    |> cast(attrs, [])
    |> validate_required([])
  end
end
