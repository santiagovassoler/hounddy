defmodule Hounddy.Profiles do
  @moduledoc """
  The Profiles context.
  """

  import Ecto.Query, warn: false
  alias Hounddy.Repo

  alias Hounddy.Profiles.Candidate

  @doc """
  Returns the list of candidates.

  ## Examples

      iex> list_candidates()
      [%Candidate{}, ...]

  """
  def list_candidates do
    Repo.all(Candidate)
  end

  @doc """
  Gets a single candidate.

  Raises `Ecto.NoResultsError` if the Candidate does not exist.

  ## Examples

      iex> get_candidate!(123)
      %Candidate{}

      iex> get_candidate!(456)
      ** (Ecto.NoResultsError)

  """
  def get_candidate!(id), do: Repo.get!(Candidate, id)

  @doc """
  Creates a candidate.

  ## Examples

      iex> create_candidate(%{field: value})
      {:ok, %Candidate{}}

      iex> create_candidate(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_candidate(attrs \\ %{}) do
    %Candidate{}
    |> Candidate.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a candidate.

  ## Examples

      iex> update_candidate(candidate, %{field: new_value})
      {:ok, %Candidate{}}

      iex> update_candidate(candidate, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_candidate(%Candidate{} = candidate, attrs) do
    candidate
    |> Candidate.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Candidate.

  ## Examples

      iex> delete_candidate(candidate)
      {:ok, %Candidate{}}

      iex> delete_candidate(candidate)
      {:error, %Ecto.Changeset{}}

  """
  def delete_candidate(%Candidate{} = candidate) do
    Repo.delete(candidate)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking candidate changes.

  ## Examples

      iex> change_candidate(candidate)
      %Ecto.Changeset{source: %Candidate{}}

  """
  def change_candidate(%Candidate{} = candidate) do
    Candidate.changeset(candidate, %{})
  end

  alias Hounddy.Profiles.Recruiter

  @doc """
  Returns the list of recruiters.

  ## Examples

      iex> list_recruiters()
      [%Recruiter{}, ...]

  """
  def list_recruiters do
    Repo.all(Recruiter)
  end

  @doc """
  Gets a single recruiter.

  Raises `Ecto.NoResultsError` if the Recruiter does not exist.

  ## Examples

      iex> get_recruiter!(123)
      %Recruiter{}

      iex> get_recruiter!(456)
      ** (Ecto.NoResultsError)

  """
  def get_recruiter!(id), do: Repo.get!(Recruiter, id)

  @doc """
  Creates a recruiter.

  ## Examples

      iex> create_recruiter(%{field: value})
      {:ok, %Recruiter{}}

      iex> create_recruiter(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_recruiter(attrs \\ %{}) do
    %Recruiter{}
    |> Recruiter.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a recruiter.

  ## Examples

      iex> update_recruiter(recruiter, %{field: new_value})
      {:ok, %Recruiter{}}

      iex> update_recruiter(recruiter, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_recruiter(%Recruiter{} = recruiter, attrs) do
    recruiter
    |> Recruiter.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Recruiter.

  ## Examples

      iex> delete_recruiter(recruiter)
      {:ok, %Recruiter{}}

      iex> delete_recruiter(recruiter)
      {:error, %Ecto.Changeset{}}

  """
  def delete_recruiter(%Recruiter{} = recruiter) do
    Repo.delete(recruiter)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking recruiter changes.

  ## Examples

      iex> change_recruiter(recruiter)
      %Ecto.Changeset{source: %Recruiter{}}

  """
  def change_recruiter(%Recruiter{} = recruiter) do
    Recruiter.changeset(recruiter, %{})
  end

  alias Hounddy.Profiles.Company

  @doc """
  Returns the list of companies.

  ## Examples

      iex> list_companies()
      [%Company{}, ...]

  """
  def list_companies do
    Repo.all(Company)
  end

  @doc """
  Gets a single company.

  Raises `Ecto.NoResultsError` if the Company does not exist.

  ## Examples

      iex> get_company!(123)
      %Company{}

      iex> get_company!(456)
      ** (Ecto.NoResultsError)

  """
  def get_company!(id), do: Repo.get!(Company, id)

  @doc """
  Creates a company.

  ## Examples

      iex> create_company(%{field: value})
      {:ok, %Company{}}

      iex> create_company(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_company(attrs \\ %{}) do
    %Company{}
    |> Company.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a company.

  ## Examples

      iex> update_company(company, %{field: new_value})
      {:ok, %Company{}}

      iex> update_company(company, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_company(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Company.

  ## Examples

      iex> delete_company(company)
      {:ok, %Company{}}

      iex> delete_company(company)
      {:error, %Ecto.Changeset{}}

  """
  def delete_company(%Company{} = company) do
    Repo.delete(company)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking company changes.

  ## Examples

      iex> change_company(company)
      %Ecto.Changeset{source: %Company{}}

  """
  def change_company(%Company{} = company) do
    Company.changeset(company, %{})
  end
end
