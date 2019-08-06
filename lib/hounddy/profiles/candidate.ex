defmodule Hounddy.Profiles.Candidate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candidates" do
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
    belongs_to :user, Hounddy.Profiles.User
    has_many :experience, Hounddy.Contents.Experience

    many_to_many :candidate_education, Hounddy.Contents.Education,
      join_through: "candidate_educations"

    timestamps()
  end

  @doc false
  def changeset(candidate, attrs) do
    candidate
    |> cast(attrs, [:gender, :about_me, :city, :country, :video_url, :user_id])
    |> validate_required([:gender, :about_me, :city, :country, :video_url, :user_id])
    |> unique_constraint(:user_id)
  end
end
