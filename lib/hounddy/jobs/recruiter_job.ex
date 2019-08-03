defmodule Hounddy.Jobs.Recruiter_job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recruiter_jobs" do
    field :candidate_id, :id
    field :recruiter_id, :id
    field :job_id, :id

    timestamps()
  end

  @doc false
  def changeset(recruiter_job, attrs) do
    recruiter_job
    |> cast(attrs, [])
    |> validate_required([])
  end
end
