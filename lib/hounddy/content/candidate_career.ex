defmodule Hounddy.Content.Candidate_career do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidate_careers" do
    field :candidate_id, :id
    field :career_id, :id

    timestamps()
  end

  @doc false
  def changeset(candidate_career, attrs) do
    candidate_career
    |> cast(attrs, [])
    |> validate_required([])
  end
end
