defmodule Hounddy.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :full_name, :string
      add :email, :string
      add :phone_number, :string
      add :pic_url, :string
      add :role, :string
      timestamps()
    end

    create unique_index(:users, [:username, :email])
  end
end
