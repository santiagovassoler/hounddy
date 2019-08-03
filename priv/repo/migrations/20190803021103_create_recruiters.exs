defmodule Hounddy.Repo.Migrations.CreateRecruiters do
  use Ecto.Migration

  def change do
    create table(:recruiters) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :company_id, references(:companies, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:recruiters, [:user_id])
    create index(:recruiters, [:company_id])
  end
end
