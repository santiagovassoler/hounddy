defmodule Hounddy.Profiles do
  @moduledoc """
  The Profiles context.
  """

  import Ecto.Query, warn: false
  alias Hounddy.Repo

  alias Hounddy.Profiles.{Candidate, Company, Career, Education, Experience, Skill}

  def get_candidate!(id), do: Repo.get!(Candidate, id)

  def create_candidate(attrs \\ %{}, user_id) do
    attrs = attrs |> Map.put(:user_id, user_id)

    %Candidate{}
    |> Candidate.changeset(attrs)
    |> Repo.insert()
  end

  def update_candidate(%Candidate{} = candidate, attrs) do
    candidate
    |> Candidate.changeset(attrs)
    |> Repo.update()
  end

  def delete_candidate(%Candidate{} = candidate) do
    Repo.delete(candidate)
  end

  def change_candidate(%Candidate{} = candidate) do
    Candidate.changeset(candidate, %{})
  end

  def list_candidates do
    Repo.all(Candidate)
  end

  def create_company(attrs \\ %{}) do
    %Company{}
    |> Company.changeset(attrs)
    |> Repo.insert()
  end

  def update_company(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  def delete_company(%Company{} = company) do
    Repo.delete(company)
  end

  def change_company(%Company{} = company) do
    Company.changeset(company, %{})
  end

  def list_companies do
    Repo.all(Company)
  end

  def create_career(attrs \\ %{}, user) do
    Candidate
    |> Repo.get_by!(user_id: user.id)
    |> Ecto.build_assoc(:career)
    |> Career.changeset(attrs)
    |> Repo.insert()
  end

  def delete_career(id) do
    Career
    |> Repo.get!(id)
    |> Repo.delete()
  end

  def create_education(attrs \\ %{}, user) do
    Candidate
    |> Repo.get_by!(user_id: user.id)
    |> Ecto.build_assoc(:education)
    |> Education.changeset(attrs)
    |> Repo.insert()
  end

  def update_education(id, attrs \\ {}) do
    Education
    |> Repo.get!(id)
    |> Education.changeset(attrs)
    |> Repo.update()
  end

  def delete_education(id) do
    Education
    |> Repo.get!(id)
    |> Repo.delete()
  end

  def create_experience(attrs \\ %{}, user) do
    Candidate
    |> Repo.get_by!(user_id: user.id)
    |> Ecto.build_assoc(:experience)
    |> Experience.changeset(attrs)
    |> Repo.insert()
  end

  def update_experience(id, attrs \\ %{}) do
    Experience
    |> Repo.get!(id)
    |> Experience.changeset(attrs)
    |> Repo.update()
  end

  def delete_experience(id) do
    Experience
    |> Repo.get!(id)
    |> Repo.delete()
  end

  def create_skill(attrs \\ %{}, user) do
    Candidate
    |> Repo.get_by!(user_id: user.id)
    |> Ecto.build_assoc(:skill)
    |> Skill.changeset(attrs)
    |> Repo.insert()
  end

  def delete_skill(id) do
    Skill
    |> Repo.get!(id)
    |> Repo.delete()
  end
end
