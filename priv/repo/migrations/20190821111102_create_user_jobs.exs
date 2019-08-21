defmodule Hounddy.Repo.Migrations.CreateUserJobs do
  use Ecto.Migration

  def change do
    create table(:user_jobs) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :job_id, references(:jobs, on_delete: :delete_all)
      add :candidate_id, references(:candidates, on_delete: :delete_all)

      timestamps()
    end

    create index(:user_jobs, [:user_id])
    create index(:user_jobs, [:job_id])
    create unique_index(:user_jobs, [:job_id, :candidate_id], name: :job_candidate_index)
  end
end
