defmodule Hounddy.Repo.Migrations.CreateSkills do
  use Ecto.Migration

  def change do
    create table(:skills) do
      add :skill, :string

      timestamps()
    end

  end
end
