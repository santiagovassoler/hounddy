defmodule Hounddy.Profiles.Candidate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidates" do
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(candidate, attrs) do
    candidate
    |> cast(attrs, [:gender, :about_me, :city, :country, :video_url])
    |> validate_required([:gender, :about_me, :city, :country, :video_url])
    |> unique_constraint(:user_id)
  end
end
