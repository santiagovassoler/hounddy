defmodule Hounddy.Repo.Migrations.CreateCareers do
  use Ecto.Migration

  def change do
    create table(:careers) do
      add :career, :string

      timestamps()
    end

  end
end
