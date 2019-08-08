defmodule Hounddy.Jobs.Recruiter_job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recruiter_jobs" do
    belongs_to :candidate, Hounddy.Profiles.Candidate
    belongs_to :recruiter, Hounddy.Profiles.Recruiter
    belongs_to :job, Hounddy.Jobs.Job

    timestamps()
  end

  @doc false
  def changeset(recruiter_job, attrs) do
    recruiter_job
    |> cast(attrs, [])
    |> validate_required([])
  end
end
