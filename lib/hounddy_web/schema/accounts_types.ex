defmodule HounddyWeb.Schema.AccountsTypes do
  use Absinthe.Schema.Notation

  use Absinthe.Ecto, repo: Hounddy.Repo

  object :user_type do
    field :id, :id
    field :email, :string
    field :full_name, :string
    field :username, :string
    field :phone_number, :string
    field :pic_url, :string
  end

  input_object :user_input_type do
    field :username, non_null(:string)
    field :email, non_null(:string)
    field :full_name, :string
    field :phone_number, :string
    field :pic_url, :string
  end

  object :login_request_type do
    field :user, :user_type, resolve: assoc(:user)
  end

  input_object :login_request_input_type do
    field :email, :string
  end
end
