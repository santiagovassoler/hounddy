defmodule Hounddy.Contents do
  @moduledoc """
  The Contents context.
  """

  import Ecto.Query, warn: false
  alias Hounddy.Repo

  alias Hounddy.Contents.Skill

  @doc """
  Returns the list of skills.

  ## Examples

      iex> list_skills()
      [%Skill{}, ...]

  """
  def list_skills do
    Repo.all(Skill)
  end

  @doc """
  Gets a single skill.

  Raises `Ecto.NoResultsError` if the Skill does not exist.

  ## Examples

      iex> get_skill!(123)
      %Skill{}

      iex> get_skill!(456)
      ** (Ecto.NoResultsError)

  """
  def get_skill!(id), do: Repo.get!(Skill, id)

  @doc """
  Creates a skill.

  ## Examples

      iex> create_skill(%{field: value})
      {:ok, %Skill{}}

      iex> create_skill(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_skill(attrs \\ %{}) do
    %Skill{}
    |> Skill.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a skill.

  ## Examples

      iex> update_skill(skill, %{field: new_value})
      {:ok, %Skill{}}

      iex> update_skill(skill, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_skill(%Skill{} = skill, attrs) do
    skill
    |> Skill.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Skill.

  ## Examples

      iex> delete_skill(skill)
      {:ok, %Skill{}}

      iex> delete_skill(skill)
      {:error, %Ecto.Changeset{}}

  """
  def delete_skill(%Skill{} = skill) do
    Repo.delete(skill)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking skill changes.

  ## Examples

      iex> change_skill(skill)
      %Ecto.Changeset{source: %Skill{}}

  """
  def change_skill(%Skill{} = skill) do
    Skill.changeset(skill, %{})
  end

  alias Hounddy.Contents.Career

  @doc """
  Returns the list of careers.

  ## Examples

      iex> list_careers()
      [%Career{}, ...]

  """
  def list_careers do
    Repo.all(Career)
  end

  @doc """
  Gets a single career.

  Raises `Ecto.NoResultsError` if the Career does not exist.

  ## Examples

      iex> get_career!(123)
      %Career{}

      iex> get_career!(456)
      ** (Ecto.NoResultsError)

  """
  def get_career!(id), do: Repo.get!(Career, id)

  @doc """
  Creates a career.

  ## Examples

      iex> create_career(%{field: value})
      {:ok, %Career{}}

      iex> create_career(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_career(attrs \\ %{}) do
    %Career{}
    |> Career.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a career.

  ## Examples

      iex> update_career(career, %{field: new_value})
      {:ok, %Career{}}

      iex> update_career(career, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_career(%Career{} = career, attrs) do
    career
    |> Career.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Career.

  ## Examples

      iex> delete_career(career)
      {:ok, %Career{}}

      iex> delete_career(career)
      {:error, %Ecto.Changeset{}}

  """
  def delete_career(%Career{} = career) do
    Repo.delete(career)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking career changes.

  ## Examples

      iex> change_career(career)
      %Ecto.Changeset{source: %Career{}}

  """
  def change_career(%Career{} = career) do
    Career.changeset(career, %{})
  end

  alias Hounddy.Contents.Education

  @doc """
  Returns the list of educations.

  ## Examples

      iex> list_educations()
      [%Education{}, ...]

  """
  def list_educations do
    Repo.all(Education)
  end

  @doc """
  Gets a single education.

  Raises `Ecto.NoResultsError` if the Education does not exist.

  ## Examples

      iex> get_education!(123)
      %Education{}

      iex> get_education!(456)
      ** (Ecto.NoResultsError)

  """
  def get_education!(id), do: Repo.get!(Education, id)

  @doc """
  Creates a education.

  ## Examples

      iex> create_education(%{field: value})
      {:ok, %Education{}}

      iex> create_education(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_education(attrs \\ %{}) do
    %Education{}
    |> Education.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a education.

  ## Examples

      iex> update_education(education, %{field: new_value})
      {:ok, %Education{}}

      iex> update_education(education, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_education(%Education{} = education, attrs) do
    education
    |> Education.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Education.

  ## Examples

      iex> delete_education(education)
      {:ok, %Education{}}

      iex> delete_education(education)
      {:error, %Ecto.Changeset{}}

  """
  def delete_education(%Education{} = education) do
    Repo.delete(education)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking education changes.

  ## Examples

      iex> change_education(education)
      %Ecto.Changeset{source: %Education{}}

  """
  def change_education(%Education{} = education) do
    Education.changeset(education, %{})
  end

  alias Hounddy.Contents.Candidate_education

  @doc """
  Returns the list of candidate_educations.

  ## Examples

      iex> list_candidate_educations()
      [%Candidate_education{}, ...]

  """
  def list_candidate_educations do
    Repo.all(Candidate_education)
  end

  @doc """
  Gets a single candidate_education.

  Raises `Ecto.NoResultsError` if the Candidate education does not exist.

  ## Examples

      iex> get_candidate_education!(123)
      %Candidate_education{}

      iex> get_candidate_education!(456)
      ** (Ecto.NoResultsError)

  """
  def get_candidate_education!(id), do: Repo.get!(Candidate_education, id)

  @doc """
  Creates a candidate_education.

  ## Examples

      iex> create_candidate_education(%{field: value})
      {:ok, %Candidate_education{}}

      iex> create_candidate_education(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_candidate_education(attrs \\ %{}) do
    %Candidate_education{}
    |> Candidate_education.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a candidate_education.

  ## Examples

      iex> update_candidate_education(candidate_education, %{field: new_value})
      {:ok, %Candidate_education{}}

      iex> update_candidate_education(candidate_education, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_candidate_education(%Candidate_education{} = candidate_education, attrs) do
    candidate_education
    |> Candidate_education.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Candidate_education.

  ## Examples

      iex> delete_candidate_education(candidate_education)
      {:ok, %Candidate_education{}}

      iex> delete_candidate_education(candidate_education)
      {:error, %Ecto.Changeset{}}

  """
  def delete_candidate_education(%Candidate_education{} = candidate_education) do
    Repo.delete(candidate_education)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking candidate_education changes.

  ## Examples

      iex> change_candidate_education(candidate_education)
      %Ecto.Changeset{source: %Candidate_education{}}

  """
  def change_candidate_education(%Candidate_education{} = candidate_education) do
    Candidate_education.changeset(candidate_education, %{})
  end

  alias Hounddy.Contents.Experience

  @doc """
  Returns the list of experiences.

  ## Examples

      iex> list_experiences()
      [%Experience{}, ...]

  """
  def list_experiences do
    Repo.all(Experience)
  end

  @doc """
  Gets a single experience.

  Raises `Ecto.NoResultsError` if the Experience does not exist.

  ## Examples

      iex> get_experience!(123)
      %Experience{}

      iex> get_experience!(456)
      ** (Ecto.NoResultsError)

  """
  def get_experience!(id), do: Repo.get!(Experience, id)

  @doc """
  Creates a experience.

  ## Examples

      iex> create_experience(%{field: value})
      {:ok, %Experience{}}

      iex> create_experience(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_experience(attrs \\ %{}) do
    %Experience{}
    |> Experience.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a experience.

  ## Examples

      iex> update_experience(experience, %{field: new_value})
      {:ok, %Experience{}}

      iex> update_experience(experience, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_experience(%Experience{} = experience, attrs) do
    experience
    |> Experience.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Experience.

  ## Examples

      iex> delete_experience(experience)
      {:ok, %Experience{}}

      iex> delete_experience(experience)
      {:error, %Ecto.Changeset{}}

  """
  def delete_experience(%Experience{} = experience) do
    Repo.delete(experience)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking experience changes.

  ## Examples

      iex> change_experience(experience)
      %Ecto.Changeset{source: %Experience{}}

  """
  def change_experience(%Experience{} = experience) do
    Experience.changeset(experience, %{})
  end
end
