defmodule Hounddy.Repo.Migrations.AddRoleToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :role, :string
    end

    create unique_index(:users, [:email, :username, :role])
  end
end
