defmodule Hounddy.Repo.Migrations.CreateCandidateEducations do
  use Ecto.Migration

  def change do
    create table(:candidate_educations) do
      add :completed_at, :integer
      add :candidate_id, references(:candidates, on_delete: :nothing)
      add :education_id, references(:educations, on_delete: :nothing)

      timestamps()
    end

    create index(:candidate_educations, [:candidate_id])
    create index(:candidate_educations, [:education_id])
  end
end
