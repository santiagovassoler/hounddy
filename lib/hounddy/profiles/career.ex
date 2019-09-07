defmodule Hounddy.Profiles.Career do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.Candidate

  schema "careers" do
    field :career, :string
    belongs_to :candidate, Candidate

    timestamps()
  end

  @doc false
  def changeset(career, attrs) do
    career
    |> cast(attrs, [:career, :candidate_id])
    |> validate_required([:career])
    |> unique_constraint(:career, name: :careers_career_candidate_id_index)
  end
end
