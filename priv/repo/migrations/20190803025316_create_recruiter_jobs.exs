defmodule Hounddy.Repo.Migrations.CreateRecruiterJobs do
  use Ecto.Migration

  def change do
    create table(:recruiter_jobs) do
      add :candidate_id, references(:candidates, on_delete: :delete_all)
      add :recruiter_id, references(:recruiters, on_delete: :delete_all)
      add :job_id, references(:jobs, on_delete: :delete_all)

      timestamps()
    end

    create index(:recruiter_jobs, [:candidate_id])
    create index(:recruiter_jobs, [:recruiter_id])
    create index(:recruiter_jobs, [:job_id])
  end
end
