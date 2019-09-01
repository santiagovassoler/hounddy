defmodule Hounddy.Email do
  use Bamboo.Phoenix, view: HounddyWeb.EmailView
  import Bamboo.Email

  def login_request(token, user) do
    new_email()
    |> to(user.email)
    |> from("support@example.com")
    |> subject("Log in to Hounddy")
    |> assign(:token, token)
    |> render(:login_request)
  end
end
