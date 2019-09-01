defmodule Hounddy.Profiles.Experience do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.Candidate

  schema "experiences" do
    field :company_name, :string
    field :start_date, :string
    field :end_date, :string
    field :description, :string
    belongs_to :candidate, Candidate

    timestamps()
  end

  @doc false
  def changeset(experience, attrs) do
    experience
    |> cast(attrs, [:company_name, :start_date, :end_date, :description, :candidate_id])
    |> validate_required([:company_name])
  end
end
