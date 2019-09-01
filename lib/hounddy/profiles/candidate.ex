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
    has_many :career, Career
    has_many :education, Education
    has_many :skill, Skill
    timestamps()
  end

  @doc false
  def changeset(candidate, attrs) do
    candidate
    |> cast(attrs, [:gender, :about_me, :city, :country, :video_url, :user_id])
    |> unique_constraint(:user_id, name: :candidates_user_id_index)
    |> foreign_key_constraint(:users, name: :candidates_user_id_fkey)
  end
end
