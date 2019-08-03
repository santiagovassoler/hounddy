defmodule Hounddy.Contents.Career do
  use Ecto.Schema
  import Ecto.Changeset

  schema "careers" do
    field :career, :string

    timestamps()
  end

  @doc false
  def changeset(career, attrs) do
    career
    |> cast(attrs, [:career])
    |> validate_required([:career])
  end
end
