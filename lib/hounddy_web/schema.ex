defmodule HounddyWeb.Schema do
  use Absinthe.Schema

  alias HounddyWeb.Resolvers

  import_types(HounddyWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end

    @desc "Get a list of all candidates"
    field :candidates, list_of(:candidate_type) do
      resolve(&Resolvers.CandidateResolver.candidates/3)
    end
  end

  mutation do
    @desc "Register a new user"
    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end

    @desc "Register a new candidate"
    field :register_candidate, type: :candidate_type do
      arg(:input, non_null(:candidate_input_type))
      resolve(&Resolvers.CandidateResolver.register_candidate/3)
    end
  end
end
