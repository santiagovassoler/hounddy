defmodule HounddyWeb.Schema.ProfilesTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Hounddy.Repo
  alias HounddyWeb.Resolvers.Profiles
  alias HounddyWeb.Schema.Middleware

  object :candidate do
    field :id, :id
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
    field :user, :user, resolve: assoc(:user)
    field :experience, list_of(:experience), resolve: assoc(:experience)
  end

  object :skill do
    field :skill, :string
    # many_to_many :candidate, Candidate, join_through: "candidate_skill"
  end

  object :experience do
    field :id, :id
    field :company_name, :string
    field :date_from, :string
    field :date_to, :string
    field :description, :string
    field :candidate, :candidate, resolve: assoc(:candidate)
  end

  object :education do
    field :city, :string
    field :country, :string
    field :institution_name, :string
    # many_to_many :candidate, Candidate, join_through: "candidate_educations"
  end

  object :companie do
    # belongs_to :user, User
    field :name, :string
    field :website_url, :string
  end

  object :career do
    field :career, :string
    # many_to_many :candidate, Candidate, join_through: "candidate_careers"
  end

  input_object :candidate_params do
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
  end

  object :profile_queries do
    field :candidates, list_of(:candidate) do
      middleware(Middleware.Authorize, :any)
      resolve(&Profiles.candidates/3)
    end
  end

  object :profile_mutations do
    field :create_candidate, :candidate do
      arg(:input, non_null(:candidate_params))
      middleware(Middleware.Authorize, :any)
      resolve(&Profiles.create_candidate/3)
    end

    field :update_candidate, :candidate do
      arg(:id, non_null(:id))
      arg(:input, :candidate_params)
      middleware(Middleware.Authorize, :any)
      resolve(&Profiles.update_candidate/3)
    end

    field :delete_candidate, :candidate do
      arg(:id, non_null(:id))
      middleware(Middleware.Authorize, :any)
      resolve(&Profiles.delete_candidate/3)
    end
  end
end
