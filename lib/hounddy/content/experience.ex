defmodule Hounddy.Content.Experience do
  use Ecto.Schema
  import Ecto.Changeset

  schema "experiences" do
    field :company_name, :string
    field :date_from, :string
    field :date_to, :string
    field :description, :string
    field :candidate_id, :id

    timestamps()
  end

  @doc false
  def changeset(experience, attrs) do
    experience
    |> cast(attrs, [:company_name, :date_from, :date_to, :description])
    |> validate_required([:company_name, :date_from, :date_to, :description])
  end
end
