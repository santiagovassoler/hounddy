defmodule Hounddy.Profiles.Candidate_skill do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.{Candidate, Skill}

  schema "candidate_skills" do
    belongs_to :candidate, Candidate
    belongs_to :skill, Skill

    timestamps()
  end

  @doc false
  def changeset(candidate_skill, attrs) do
    candidate_skill
    |> cast(attrs, [])
    |> validate_required([])
  end
end
