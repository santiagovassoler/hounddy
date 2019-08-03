defmodule Hounddy.Repo.Migrations.CreateExperiences do
  use Ecto.Migration

  def change do
    create table(:experiences) do
      add :company_name, :string
      add :date_from, :string
      add :date_to, :string
      add :description, :string
      add :candidate_id, references(:candidates, on_delete: :nothing)

      timestamps()
    end

    create index(:experiences, [:candidate_id])
  end
end
