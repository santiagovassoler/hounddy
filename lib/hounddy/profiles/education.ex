defmodule Hounddy.Profiles.Education do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Profiles.Candidate

  schema "educations" do
    field :city, :string
    field :country, :string
    field :institution_name, :string
    field :completed_at, :integer
    field :degree, :string
    belongs_to :candidate, Candidate
    timestamps()
  end

  @doc false
  def changeset(education, attrs) do
    education
    |> cast(attrs, [:institution_name, :city, :country, :completed_at, :degree])
  end
end
