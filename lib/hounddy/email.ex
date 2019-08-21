defmodule Hounddy.Email do
  use Bamboo.Phoenix, view: HounddyWeb.EmailView
  import Bamboo.Email

  alias Hounddy.Accounts.Tokens

  def login_request(user, login_request) do
    new_email()
    |> to(user.email)
    |> from("support@example.com")
    |> subject("Log in to Hounddy")
    |> assign(:token, Tokens.sign_login_request(login_request))
    |> render(:login_request)
  end
end
