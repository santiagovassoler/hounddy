defmodule HounddyWeb.Resolvers.Profiles do
  alias Hounddy.Profiles

  def candidates(_, _, _) do
    {:ok, Profiles.list_candidates()}
  end

  def create_candidate(_, %{input: input}, %{context: %{current_user: current_user}}) do
    with {:ok, candidate} <- Profiles.create_candidate(input, current_user.id) do
      {:ok, candidate}
    end
  end

  def update_candidate(_, %{id: id, input: input}, _) do
    candidate = Profiles.get_candidate!(id)

    with {:ok, candidate} <- Profiles.update_candidate(candidate, input) do
      {:ok, candidate}
    end
  end

  def delete_candidate(_, %{id: id}, _) do
    candidate = Profiles.get_candidate!(id)

    with {:ok, candidate} <- Profiles.delete_candidate(candidate) do
      {:ok, candidate}
    end
  end
end
