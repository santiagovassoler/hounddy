defmodule Hounddy.Repo.Migrations.AddRecruiterIdToCompany do
  use Ecto.Migration

  def change do
    alter table(:companies) do
      add :recruiter_id, references(:recruiters, on_delete: :nothing)
    end

    create index(:companies, [:recruiter_id])
  end
end
