defmodule Hounddy.Profiles.Company do
  use Ecto.Schema
  import Ecto.Changeset

  schema "companies" do
    field :name, :string
    field :website_url, :string

    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :website_url])
    |> validate_required([:name, :website_url])
  end
end
