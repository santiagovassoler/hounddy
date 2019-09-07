defmodule Hounddy.Repo.Migrations.CreateEducations do
  use Ecto.Migration

  def change do
    create table(:educations) do
      add :institution_name, :string, null: false
      add :city, :string
      add :country, :string
      add :degree, :string
      add :completed_at, :string
      add :candidate_id, references(:candidates, on_delete: :delete_all), null: false
      timestamps()
    end
  end
end
