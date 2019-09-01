defmodule Hounddy.Repo.Migrations.CreateExperiences do
  use Ecto.Migration

  def change do
    create table(:experiences) do
      add :company_name, :string, null: false
      add :start_date, :string
      add :end_date, :string
      add :description, :string
      add :candidate_id, references(:candidates, on_delete: :delete_all), null: false

      timestamps()
    end
  end
end
