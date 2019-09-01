defmodule Hounddy.Repo.Migrations.CreateSkills do
  use Ecto.Migration

  def change do
    create table(:skills) do
      add :skill, :string
      add :candidate_id, references(:candidates, on_delete: :delete_all), null: false
      timestamps()
    end
  end
end
