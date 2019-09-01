defmodule Hounddy.Repo.Migrations.CreateEducations do
  use Ecto.Migration

  def change do
    create table(:educations) do
      add :institution_name, :string, fnull: false
      add :city, :string
      add :country, :string
      add :degree, :string
      add :candidate_id, references(:candidates, on_delete: :nothing), null: false
      timestamps()
    end
  end
end
