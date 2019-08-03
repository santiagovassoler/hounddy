defmodule Hounddy.Content.Candidate_skill do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidate_skills" do
    field :candidate_id, :id
    field :skill_id, :id

    timestamps()
  end

  @doc false
  def changeset(candidate_skill, attrs) do
    candidate_skill
    |> cast(attrs, [])
    |> validate_required([])
  end
end
