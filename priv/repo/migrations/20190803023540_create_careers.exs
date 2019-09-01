defmodule Hounddy.Repo.Migrations.CreateCareers do
  use Ecto.Migration

  def change do
    create table(:careers) do
      add :career, :string, null: false
      add :candidate_id, references(:candidates, on_delete: :delete_all), null: false
      timestamps()
    end

    create unique_index(:careers, [:career, :candidate_id])
  end
end
