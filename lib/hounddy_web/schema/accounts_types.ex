defmodule HounddyWeb.Schema.AccountsTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Hounddy.Repo
  alias HounddyWeb.Resolvers.Accounts
  # alias HounddyWeb.Schema.Middleware

  object :user do
    field :id, :id
    field :email, :string
    field :full_name, :string
    field :username, :string
    field :phone_number, :string
    field :pic_url, :string
    field :role, :string
  end

  input_object :user_params do
    field :email, :string
    field :full_name, :string
    field :username, :string
    field :phone_number, :string
    field :pic_url, :string
    field :role, :string
  end

  object :account_queries do
    field :users, list_of(:user) do
      # middleware(Middleware.Authorize, "admin")
      resolve(&Accounts.users/3)
    end
  end

  object :account_mutations do
    field :create_user, :user do
      arg(:input, :user_params)
      resolve(&Accounts.create_user/3)
    end

    field :login, :user do
      arg(:token, non_null(:string))
      resolve(&Accounts.login/3)
    end

    field :create_token, :user do
      arg(:email, non_null(:string))
      resolve(&Accounts.create_token/3)
    end
  end
end
