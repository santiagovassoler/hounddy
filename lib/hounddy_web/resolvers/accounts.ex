defmodule HounddyWeb.Resolvers.Accounts do
  alias Hounddy.Accounts
  alias Hounddy.Mailer
  alias Hounddy.Email

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end

  def create_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end

  def create_login_request(_, %{input: input}, _) do
    case Accounts.create_login_request(input.email) do
      {:ok, %{login_request: login_request}, user} ->
        user
        |> Email.login_request(login_request)
        |> Mailer.deliver_now()

        {:ok, %{user: user}}

      {:error, :not_found} ->
        {:error, :not_found}
    end
  end

  def login(_, %{"token" => token}, _) do
    case Accounts.redeem(token) do
      {:ok, %{session: session}} ->
        {:ok, %{session: session}}

      # conn
      # |> put_flash(:info, "Logged in successfully.")
      # |> put_session(:session_id, session.id)
      # |> configure_session(renew: true)
      # |> redirect(to: Routes.home_path(conn, :index))

      {:error, :expired} ->
        {:error, %{}}

      # conn
      # |> put_flash(:error, "Oops, that login link has expired.")
      # |> render("new.html")

      {:error, :not_found} ->
        {:error, %{}}
        # conn
        # |> put_flash(:error, "Oops, that login link is not valid anymore.")
        # |> render("new.html")
    end
  end
end
