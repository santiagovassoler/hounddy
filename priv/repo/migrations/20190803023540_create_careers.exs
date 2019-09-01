defmodule Hounddy.Repo.Migrations.CreateCareers do
  use Ecto.Migration

  def change do
    create table(:careers) do
      add :career, :string
      add :candidate_id, references(:candidates, on_delete: :delete_all), null: false
      timestamps()
    end
  end
end
