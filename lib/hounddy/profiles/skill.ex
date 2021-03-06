defmodule Hounddy.Profiles.Skill do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.Candidate

  schema "skills" do
    field :skill, :string
    belongs_to :candidate, Candidate
    timestamps()
  end

  @doc false
  def changeset(skill, attrs) do
    skill
    |> cast(attrs, [:skill, :candidate_id])
    |> validate_required([:skill])
    |> unique_constraint(:candidates_id_skills, name: :candidates_id_skills_index)
  end
end
