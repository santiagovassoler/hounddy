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

  def create_career(_, %{input: input}, %{context: %{current_user: current_user}}) do
    with {:ok, career} <- Profiles.create_career(input, current_user) do
      {:ok, career}
    end
  end

  def delete_career(_, %{id: id}, _) do
    with {:ok, career} <- Profiles.delete_career(id) do
      {:ok, career}
    end
  end

  def create_company(_, %{input: input}, %{context: %{current_user: current_user}}) do
    with {:ok, company} <- Profiles.create_company(input, current_user) do
      {:ok, company}
    end
  end

  def update_company(_, %{id: id, input: input}, _) do
    with {:ok, company} <- Profiles.update_company(id, input) do
      {:ok, company}
    end
  end

  def delete_company(_, %{id: id}, _) do
    with {:ok, company} <- Profiles.delete_company(id) do
      {:ok, company}
    end
  end

  def create_education(_, %{input: input}, %{context: %{current_user: current_user}}) do
    with {:ok, education} <- Profiles.create_education(input, current_user) do
      {:ok, education}
    end
  end

  def update_education(_, %{id: id, input: input}, _) do
    with {:ok, education} <- Profiles.update_education(id, input) do
      {:ok, education}
    end
  end

  def delete_education(_, %{id: id}, _) do
    with {:ok, education} <- Profiles.delete_education(id) do
      {:ok, education}
    end
  end

  def create_experience(_, %{input: input}, %{context: %{current_user: current_user}}) do
    with {:ok, experience} <- Profiles.create_experience(input, current_user) do
      {:ok, experience}
    end
  end

  def update_experience(_, %{id: id, input: input}, _) do
    with {:ok, experience} <- Profiles.update_experience(id, input) do
      {:ok, experience}
    end
  end

  def delete_experience(_, %{id: id}, _) do
    with {:ok, experience} <- Profiles.delete_experience(id) do
      {:ok, experience}
    end
  end

  def create_skill(_, %{input: input}, %{context: %{current_user: current_user}}) do
    with {:ok, skill} <- Profiles.create_skill(input, current_user) do
      {:ok, skill}
    end
  end

  def delete_skill(_, %{id: id}, _) do
    with {:ok, skill} <- Profiles.delete_skill(id) do
      {:ok, skill}
    end
  end
end
