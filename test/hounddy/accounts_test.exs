defmodule Hounddy.AccountsTest do
  use Hounddy.DataCase

  alias Hounddy.Accounts

  describe "users" do
    alias Hounddy.Accounts.User

    @valid_attrs %{email: "some email", full_name: "some full_name", phone_number: "some phone_number", pic_url: "some pic_url", username: "some username"}
    @update_attrs %{email: "some updated email", full_name: "some updated full_name", phone_number: "some updated phone_number", pic_url: "some updated pic_url", username: "some updated username"}
    @invalid_attrs %{email: nil, full_name: nil, phone_number: nil, pic_url: nil, username: nil}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = Accounts.create_user(@valid_attrs)
      assert user.email == "some email"
      assert user.full_name == "some full_name"
      assert user.phone_number == "some phone_number"
      assert user.pic_url == "some pic_url"
      assert user.username == "some username"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      assert {:ok, %User{} = user} = Accounts.update_user(user, @update_attrs)
      assert user.email == "some updated email"
      assert user.full_name == "some updated full_name"
      assert user.phone_number == "some updated phone_number"
      assert user.pic_url == "some updated pic_url"
      assert user.username == "some updated username"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end

  describe "sessions" do
    alias Hounddy.Accounts.Session

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def session_fixture(attrs \\ %{}) do
      {:ok, session} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_session()

      session
    end

    test "list_sessions/0 returns all sessions" do
      session = session_fixture()
      assert Accounts.list_sessions() == [session]
    end

    test "get_session!/1 returns the session with given id" do
      session = session_fixture()
      assert Accounts.get_session!(session.id) == session
    end

    test "create_session/1 with valid data creates a session" do
      assert {:ok, %Session{} = session} = Accounts.create_session(@valid_attrs)
    end

    test "create_session/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_session(@invalid_attrs)
    end

    test "update_session/2 with valid data updates the session" do
      session = session_fixture()
      assert {:ok, %Session{} = session} = Accounts.update_session(session, @update_attrs)
    end

    test "update_session/2 with invalid data returns error changeset" do
      session = session_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_session(session, @invalid_attrs)
      assert session == Accounts.get_session!(session.id)
    end

    test "delete_session/1 deletes the session" do
      session = session_fixture()
      assert {:ok, %Session{}} = Accounts.delete_session(session)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_session!(session.id) end
    end

    test "change_session/1 returns a session changeset" do
      session = session_fixture()
      assert %Ecto.Changeset{} = Accounts.change_session(session)
    end
  end

  describe "login_requests" do
    alias Hounddy.Accounts.Login_request

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def login_request_fixture(attrs \\ %{}) do
      {:ok, login_request} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_login_request()

      login_request
    end

    test "list_login_requests/0 returns all login_requests" do
      login_request = login_request_fixture()
      assert Accounts.list_login_requests() == [login_request]
    end

    test "get_login_request!/1 returns the login_request with given id" do
      login_request = login_request_fixture()
      assert Accounts.get_login_request!(login_request.id) == login_request
    end

    test "create_login_request/1 with valid data creates a login_request" do
      assert {:ok, %Login_request{} = login_request} = Accounts.create_login_request(@valid_attrs)
    end

    test "create_login_request/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_login_request(@invalid_attrs)
    end

    test "update_login_request/2 with valid data updates the login_request" do
      login_request = login_request_fixture()
      assert {:ok, %Login_request{} = login_request} = Accounts.update_login_request(login_request, @update_attrs)
    end

    test "update_login_request/2 with invalid data returns error changeset" do
      login_request = login_request_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_login_request(login_request, @invalid_attrs)
      assert login_request == Accounts.get_login_request!(login_request.id)
    end

    test "delete_login_request/1 deletes the login_request" do
      login_request = login_request_fixture()
      assert {:ok, %Login_request{}} = Accounts.delete_login_request(login_request)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_login_request!(login_request.id) end
    end

    test "change_login_request/1 returns a login_request changeset" do
      login_request = login_request_fixture()
      assert %Ecto.Changeset{} = Accounts.change_login_request(login_request)
    end
  end
end
