defmodule HounddyWeb.Resolvers.CandidateResolver do
  alias Hounddy.Profiles

  def candidates(_, _, _) do
    {:ok, Profiles.list_candidates()}
  end

  def register_candidate(_, %{input: input}, _) do
    Profiles.create_candidate(input)
  end
end
