defmodule Hounddy.Repo.Migrations.CreateCandidateCareers do
  use Ecto.Migration

  def change do
    create table(:candidate_careers) do
      add :candidate_id, references(:candidates, on_delete: :nothing)
      add :career_id, references(:careers, on_delete: :nothing)

      timestamps()
    end

    create index(:candidate_careers, [:candidate_id])
    create index(:candidate_careers, [:career_id])
  end
end
