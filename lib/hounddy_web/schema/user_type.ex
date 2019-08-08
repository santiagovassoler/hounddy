defmodule HounddyWeb.Schema.Types.UserType do
  use Absinthe.Schema.Notation

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
end
