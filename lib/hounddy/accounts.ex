defmodule Hounddy.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias Hounddy.Repo
  alias Hounddy.Accounts.User
  alias Hounddy.Accounts.Login_request
  alias Ecto.Multi

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Gets a single user by their email.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples
      iex> get_user_by_email!("user@gmail.com")
      %User{}
      iex> get_user_by_email!("notuser@gmail.com")
      ** (Ecto.NoResultsError)
  """
  def get_user_by_email!(email), do: Repo.get_by(User, email: email)

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a User.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{source: %User{}}

  """
  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  alias Hounddy.Accounts.Session

  @doc """
  Returns the list of sessions.

  ## Examples

      iex> list_sessions()
      [%Session{}, ...]

  """
  def list_sessions do
    Repo.all(Session)
  end

  @doc """
  Gets a single session.

  Raises `Ecto.NoResultsError` if the Session does not exist.

  ## Examples

      iex> get_session!(123)
      %Session{}

      iex> get_session!(456)
      ** (Ecto.NoResultsError)

  """
  def get_session!(id), do: Repo.get!(Session, id)

  @doc """
  Creates a session.

  ## Examples

      iex> create_session(%{field: value})
      {:ok, %Session{}}

      iex> create_session(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_session(attrs \\ %{}) do
    %Session{}
    |> Session.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a session.

  ## Examples

      iex> update_session(session, %{field: new_value})
      {:ok, %Session{}}

      iex> update_session(session, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_session(%Session{} = session, attrs) do
    session
    |> Session.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Session.

  ## Examples

      iex> delete_session(session)
      {:ok, %Session{}}

      iex> delete_session(session)
      {:error, %Ecto.Changeset{}}

  """
  def delete_session(%Session{} = session) do
    Repo.delete(session)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking session changes.

  ## Examples

      iex> change_session(session)
      %Ecto.Changeset{source: %Session{}}

  """
  def change_session(%Session{} = session) do
    Session.changeset(session, %{})
  end

  alias Hounddy.Accounts.Login_request

  @doc """
  Returns the list of login_requests.

  ## Examples

      iex> list_login_requests()
      [%Login_request{}, ...]

  """
  def list_login_requests do
    Repo.all(Login_request)
  end

  @doc """
  Gets a single login_request.

  Raises `Ecto.NoResultsError` if the Login request does not exist.

  ## Examples

      iex> get_login_request!(123)
      %Login_request{}

      iex> get_login_request!(456)
      ** (Ecto.NoResultsError)

  """
  def get_login_request!(id), do: Repo.get!(Login_request, id)

  # @doc """
  # Creates a login_request.

  # ## Examples

  #     iex> create_login_request(%{field: value})
  #     {:ok, %Login_request{}}

  #     iex> create_login_request(%{field: bad_value})
  #     {:error, %Ecto.Changeset{}}

  # """
  def create_login_request(attrs \\ %{}) do
    %Login_request{}
    |> Login_request.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a login_request.

  ## Examples

      iex> update_login_request(login_request, %{field: new_value})
      {:ok, %Login_request{}}

      iex> update_login_request(login_request, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_login_request(%Login_request{} = login_request, attrs) do
    login_request
    |> Login_request.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Login_request.

  ## Examples

      iex> delete_login_request(login_request)
      {:ok, %Login_request{}}

      iex> delete_login_request(login_request)
      {:error, %Ecto.Changeset{}}

  """
  def delete_login_request(%Login_request{} = login_request) do
    Repo.delete(login_request)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking login_request changes.

  ## Examples

      iex> change_login_request(login_request)
      %Ecto.Changeset{source: %Login_request{}}

  """
  def change_login_request(%Login_request{} = login_request) do
    Login_request.changeset(login_request, %{})
  end

  #############################################################################################
  def create_auth_token(user) do
    HounddyWeb.Authentication.sign(%{role: user.role, id: user.id})
  end

  def provide_token(nil), do: {:error, :not_found}

  def provide_token(email) when is_binary(email) do
    get_user_by_email!(email)
    |> send_token()
  end

  # def provide_token(user = %User{}) do
  #   send_token(user)
  # end

  defp send_token(nil), do: {:error, :not_found}

  defp send_token(user) do
    user
    |> create_auth_token()
    |> Hounddy.Email.login_request(user)
    |> Hounddy.Mailer.deliver_now()

    {:ok, user}
  end

  def verify_token(nil), do: {:error, :invalid}

  def verify_token(token) do
    case HounddyWeb.Authentication.verify(token) do
      {:ok, data} -> {:ok, data}
      {:error, :invalid} -> {:error, "invalid"}
      {:error, :expired} -> {:error, "expired"}
    end
  end

  def lookup(role, id) do
    Repo.get_by(User, role: to_string(role), id: id)
  end
end
