defmodule HounddyWeb.Schema.ProfilesTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Hounddy.Repo
  alias HounddyWeb.Resolvers.Profiles
  # alias HounddyWeb.Schema.Middleware

  object :candidate do
    field :id, :id
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string

    field :user, :user, resolve: assoc(:user)
    field :experience, list_of(:experience), resolve: assoc(:experience)
    field :career, list_of(:career), resolve: assoc(:career)
    field :education, list_of(:education), resolve: assoc(:education)
    field :skill, list_of(:skill), resolve: assoc(:skill)
  end

  object :skill do
    field :id, :id
    field :skill, :string
    field :candidate, :candidate, resolve: assoc(:candidate)
  end

  object :experience do
    field :id, :id
    field :company_name, :string
    field :start_date, :string
    field :end_date, :string
    field :description, :string
    field :candidate, :candidate, resolve: assoc(:candidate)
  end

  object :education do
    field :city, :string
    field :country, :string
    field :institution_name, :string
    field :degree, :string
    field :completed_at, :string
    field :candidate, :candidate, resolve: assoc(:candidate)
  end

  object :company do
    field :name, :string
    field :website_url, :string
    field :user, :user, resolve: assoc(:user)
  end

  object :career do
    field :career, :string
    field :candidate, :candidate, resolve: assoc(:candidate)
  end

  input_object :candidate_params do
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :gender, :string
    field :video_url, :string
  end

  input_object :career_params do
    field :career, :string
  end

  input_object :education_params do
    field :city, :string
    field :country, :string
    field :institution_name, :string
    field :degree, :string
    field :completed_at, :string
  end

  input_object :experience_params do
    field :company_name, :string
    field :start_date, :string
    field :end_date, :string
    field :description, :string
  end

  input_object :skill_params do
    field :skill, :string
  end

  input_object :company_params do
    field :name, :string
    field :website_url, :string
  end

  object :profile_queries do
    field :candidates, list_of(:candidate) do
      # middleware(Middleware.Authorize, :any)
      resolve(&Profiles.candidates/3)
    end
  end

  object :profile_mutations do
    field :create_candidate, :candidate do
      arg(:input, non_null(:candidate_params))
      # middleware(Middleware.Authorize, :any)
      resolve(&Profiles.create_candidate/3)
    end

    field :update_candidate, :candidate do
      arg(:id, non_null(:id))
      arg(:input, :candidate_params)
      # middleware(Middleware.Authorize, :any)
      resolve(&Profiles.update_candidate/3)
    end

    field :delete_candidate, :candidate do
      arg(:id, non_null(:id))
      # middleware(Middleware.Authorize, :any)
      resolve(&Profiles.delete_candidate/3)
    end

    field :create_career, :career do
      arg(:input, non_null(:career_params))
      # middleware(Middleware.Authorize, :"candidate")
      resolve(&Profiles.create_career/3)
    end

    field :delete_career, :career do
      arg(:id, non_null(:id))
      resolve(&Profiles.delete_career/3)
    end

    field :create_education, :education do
      arg(:input, non_null(:education_params))
      resolve(&Profiles.create_education/3)
    end

    field :update_education, :education do
      arg(:id, non_null(:id))
      arg(:input, non_null(:education_params))
      resolve(&Profiles.update_education/3)
    end

    field :delete_education, :education do
      arg(:id, non_null(:id))
      resolve(&Profiles.delete_education/3)
    end

    field :create_experience, :experience do
      arg(:input, non_null(:experience_params))
      resolve(&Profiles.create_experience/3)
    end

    field :update_experience, :experience do
      arg(:id, non_null(:id))
      arg(:input, non_null(:experience_params))
      resolve(&Profiles.update_experience/3)
    end

    field :delete_experience, :career do
      arg(:id, non_null(:id))
      resolve(&Profiles.delete_experience/3)
    end

    field :create_skill, :skill do
      arg(:input, non_null(:skill_params))
      resolve(&Profiles.create_skill/3)
    end

    field :delete_skill, :skill do
      arg(:id, non_null(:id))
      resolve(&Profiles.delete_skill/3)
    end

    field :create_company, :company do
      arg(:input, non_null(:company_params))
      resolve(&Profiles.create_company/3)
    end

    field :update_company, :company do
      arg(:id, non_null(:id))
      arg(:input, non_null(:company_params))
      resolve(&Profiles.update_company/3)
    end

    field :delete_company, :company do
      arg(:id, non_null(:id))
      resolve(&Profiles.delete_company/3)
    end
  end
end
