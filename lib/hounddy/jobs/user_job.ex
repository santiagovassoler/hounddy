defmodule Hounddy.Jobs.User_job do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Accounts.User
  alias Hounddy.Profiles.Candidate
  alias Hounddy.Jobs.Job

  schema "user_jobs" do
    belongs_to :user, User
    belongs_to :job, Job
    belongs_to :candidate, Candidate

    timestamps()
  end

  @doc false
  def changeset(user_job, attrs) do
    user_job
    |> cast(attrs, [])
    |> validate_required([])
  end
end
