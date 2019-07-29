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
end
