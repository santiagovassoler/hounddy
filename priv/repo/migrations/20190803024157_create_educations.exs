defmodule Hounddy.Repo.Migrations.CreateEducations do
  use Ecto.Migration

  def change do
    create table(:educations) do
      add :institution_name, :string
      add :city, :string
      add :country, :string

      timestamps()
    end

    create unique_index(:educations, [:institution_name, :city, :country], name: :your_index_name)
  end
end
