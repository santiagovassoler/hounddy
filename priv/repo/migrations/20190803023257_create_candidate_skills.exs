defmodule Hounddy.Repo.Migrations.CreateCandidateSkills do
  use Ecto.Migration

  def change do
    create table(:candidate_skills) do
      add :candidate_id, references(:candidates, on_delete: :nothing)
      add :skill_id, references(:skills, on_delete: :nothing)

      timestamps()
    end

    create index(:candidate_skills, [:candidate_id])
    create index(:candidate_skills, [:skill_id])
  end
end
