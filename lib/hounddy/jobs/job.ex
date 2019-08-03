defmodule Hounddy.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "jobs" do
    field :description, :string
    field :status, :string
    field :recruiter_id, :id

    timestamps()
  end

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, [:description, :status])
    |> validate_required([:description, :status])
  end
end
