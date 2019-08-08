defmodule Hounddy.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "jobs" do
    field :description, :string
    field :status, :string
    belongs_to :recruiter, Hounddy.Profiles.Recruiter
    timestamps()
  end

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, [:description, :status, :recruiter_id])
    |> validate_required([:description, :status, :recruiter_id])
  end
end
