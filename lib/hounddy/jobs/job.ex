defmodule Hounddy.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hounddy.Accounts.User

  schema "jobs" do
    field :description, :string
    field :status, :string
    belongs_to :user, User
    timestamps()
  end

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, [:description, :status, :user_id])
    |> validate_required([:description, :status, :user_id])
  end
end
