defmodule Hounddy.Repo.Migrations.CreateCandidates do
  use Ecto.Migration

  def change do
    create table(:candidates) do
      add :gender, :string
      add :about_me, :text
      add :city, :string
      add :country, :string
      add :video_url, :string
      add :user_id, references(:users, on_delete: :delete_all), null: false

      timestamps()
    end

    create unique_index(:candidates, [:user_id])
  end
end
