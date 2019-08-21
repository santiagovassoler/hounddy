defmodule Hounddy.Profiles.Candidate do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Accounts.User
  alias Hounddy.Profiles.{Experience, Career, Education, Skill}

  schema "candidates" do
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
    belongs_to :user, User
    has_many :experience, Experience

    many_to_many :candidate_career, Career,
      join_through: "candidate_careers",
      on_replace: :delete

    many_to_many :candidate_education, Education,
      join_through: "candidate_educations",
      on_replace: :delete

    many_to_many :candidate_skill, Skill,
      join_through: "candidate_skills",
      on_replace: :delete

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
