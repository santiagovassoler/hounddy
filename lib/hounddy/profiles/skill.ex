defmodule Hounddy.Profiles.Skill do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.Candidate

  schema "skills" do
    field :skill, :string
    many_to_many :candidate, Candidate, join_through: "candidate_skill"
    timestamps()
  end

  @doc false
  def changeset(skill, attrs) do
    skill
    |> cast(attrs, [:skill])
    |> validate_required([:skill])
  end
end
