defmodule Hounddy.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :description, :string
      add :status, :string
      add :recruiter_id, references(:recruiters, on_delete: :nothing)

      timestamps()
    end

    create index(:jobs, [:recruiter_id])
  end
end
