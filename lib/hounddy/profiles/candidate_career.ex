defmodule Hounddy.Profiles.Candidate_career do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.{Candidate, Career}

  schema "candidate_careers" do
    belongs_to :candidate, Candidate
    belongs_to :carrer, Career

    timestamps()
  end

  @doc false
  def changeset(candidate_career, attrs) do
    candidate_career
    |> cast(attrs, [])
    |> validate_required([])
  end
end
