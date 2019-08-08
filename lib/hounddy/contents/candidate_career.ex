defmodule Hounddy.Contents.Candidate_career do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidate_careers" do
    belongs_to :candidate, Hounddy.Profiles.Candidate
    belongs_to :carrer, Hounddy.Contents.Career

    timestamps()
  end

  @doc false
  def changeset(candidate_career, attrs) do
    candidate_career
    |> cast(attrs, [])
    |> validate_required([])
  end
end
