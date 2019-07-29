defmodule HounddyWeb.Schema.Types.Usertype do
  use Absinthe.Schema.Notation

  object :user_type do
    field :id, :id
    field :username, :string
    field :email, :string
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :full_name, :string
    field :phone_number, :string
    field :profile_pic_url, :string
  end

  input_object :user_input_type do
    field :username, non_null(:string)
    field :email, non_null(:string)
    field :about_me, :string
    field :city, :string
    field :country, :string
    field :full_name, :string
    field :phone_number, :string
    field :profile_pic_url, :string
  end
end
