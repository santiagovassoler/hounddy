defmodule HounddyWeb.Schema.Types.CandidateType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Hounddy.Repo

  object :candidate_type do
    field :id, :id
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
    field :user, :user_type, resolve: assoc(:user)
  end

  input_object :candidate_input_type do
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
    field :user_id, :id
  end
end
