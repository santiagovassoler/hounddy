defmodule HounddyWeb.Resolvers.Accounts do
  alias Hounddy.Accounts

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end

  def create_user(_, %{input: input}, _) do
    with {:ok, user} <- Accounts.create_user(input) do
      {:ok, user}
    end
  end

  def create_token(_, %{email: email}, _) do
    case Accounts.provide_token(email) do
      {:ok, user} -> {:ok, user}
      {:error, reason} -> {:error, reason}
    end
  end

  def login(_, %{token: token}, _) do
    case Accounts.verify_token(token) do
      {:ok, data} -> {:ok, %{token: token, user_id: data}}
      {:error, reason} -> {:error, reason}
    end
  end
end
