defmodule Hounddy.Content.Skill do
  use Ecto.Schema
  import Ecto.Changeset

  schema "skills" do
    field :skill, :string

    timestamps()
  end

  @doc false
  def changeset(skill, attrs) do
    skill
    |> cast(attrs, [:skill])
    |> validate_required([:skill])
  end
end
