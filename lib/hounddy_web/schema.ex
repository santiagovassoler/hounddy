defmodule HounddyWeb.Schema do
  use Absinthe.Schema
  alias HounddyWeb.Resolvers

  import_types(__MODULE__.AccountsTypes)
  import_types(__MODULE__.JobsTypes)
  import_types(__MODULE__.ProfilesTypes)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.Accounts.users/3)
    end

    # @desc "Get a list of all candidates"
    # field :candidates, list_of(:candidate_type) do
    #   resolve(&Resolvers.Accounts.candidates/3)
    # end
  end

  mutation do
    @desc "Create a new user"
    field :create_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.Accounts.create_user/3)
    end

    # @desc "Create a new candidate"
    # field :create_candidate, type: :candidate_type do
    #   arg(:input, non_null(:candidate_input_type))
    #   resolve(&Resolvers.Accounts.create_candidate/3)
    # end

    @desc "Create a login request"
    field :create_login_request, type: :login_request_type do
      arg(:input, non_null(:login_request_input_type))
      resolve(&Resolvers.Accounts.create_login_request/3)
    end

    @desc "log in into the app"
    field :login, type: :login_request_type do
      arg(:input, non_null(:login_request_input_type))
      resolve(&Resolvers.Accounts.login/3)
    end
  end
end
