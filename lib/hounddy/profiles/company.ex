defmodule Hounddy.Profiles.Company do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Accounts.User

  schema "companies" do
    belongs_to :user, User
    field :name, :string
    field :website_url, :string

    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :website_url, :user_id])
    |> validate_required([:name])
  end
end
