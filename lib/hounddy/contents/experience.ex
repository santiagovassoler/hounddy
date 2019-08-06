defmodule Hounddy.Contents.Experience do
  use Ecto.Schema
  import Ecto.Changeset

  schema "experiences" do
    field :company_name, :string
    field :date_from, :string
    field :date_to, :string
    field :description, :string
    belongs_to :candidate, Hounddy.Profiles.Candidate

    timestamps()
  end

  @doc false
  def changeset(experience, attrs) do
    experience
    |> cast(attrs, [:company_name, :date_from, :date_to, :description, :candidate_id])
    |> validate_required([:company_name, :date_from, :date_to, :description, :candidate_id])
  end
end
