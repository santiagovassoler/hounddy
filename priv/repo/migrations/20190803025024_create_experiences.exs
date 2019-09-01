defmodule Hounddy.Repo.Migrations.CreateExperiences do
  use Ecto.Migration

  def change do
    create table(:experiences) do
      add :company_name, :string
      add :start_date, :string
      add :end_to, :string
      add :description, :string
      add :candidate_id, references(:candidates, on_delete: :nothing), null: false

      timestamps()
    end
  end
end
