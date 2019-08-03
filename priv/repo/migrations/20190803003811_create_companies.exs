defmodule Hounddy.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string
      add :website_url, :string

      timestamps()
    end
  end
end
