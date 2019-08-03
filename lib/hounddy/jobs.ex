defmodule Hounddy.Jobs do
  @moduledoc """
  The Jobs context.
  """

  import Ecto.Query, warn: false
  alias Hounddy.Repo

  alias Hounddy.Jobs.Job

  @doc """
  Returns the list of jobs.

  ## Examples

      iex> list_jobs()
      [%Job{}, ...]

  """
  def list_jobs do
    Repo.all(Job)
  end

  @doc """
  Gets a single job.

  Raises `Ecto.NoResultsError` if the Job does not exist.

  ## Examples

      iex> get_job!(123)
      %Job{}

      iex> get_job!(456)
      ** (Ecto.NoResultsError)

  """
  def get_job!(id), do: Repo.get!(Job, id)

  @doc """
  Creates a job.

  ## Examples

      iex> create_job(%{field: value})
      {:ok, %Job{}}

      iex> create_job(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_job(attrs \\ %{}) do
    %Job{}
    |> Job.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a job.

  ## Examples

      iex> update_job(job, %{field: new_value})
      {:ok, %Job{}}

      iex> update_job(job, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_job(%Job{} = job, attrs) do
    job
    |> Job.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Job.

  ## Examples

      iex> delete_job(job)
      {:ok, %Job{}}

      iex> delete_job(job)
      {:error, %Ecto.Changeset{}}

  """
  def delete_job(%Job{} = job) do
    Repo.delete(job)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking job changes.

  ## Examples

      iex> change_job(job)
      %Ecto.Changeset{source: %Job{}}

  """
  def change_job(%Job{} = job) do
    Job.changeset(job, %{})
  end

  alias Hounddy.Jobs.Recruiter_job

  @doc """
  Returns the list of recruiter_jobs.

  ## Examples

      iex> list_recruiter_jobs()
      [%Recruiter_job{}, ...]

  """
  def list_recruiter_jobs do
    Repo.all(Recruiter_job)
  end

  @doc """
  Gets a single recruiter_job.

  Raises `Ecto.NoResultsError` if the Recruiter job does not exist.

  ## Examples

      iex> get_recruiter_job!(123)
      %Recruiter_job{}

      iex> get_recruiter_job!(456)
      ** (Ecto.NoResultsError)

  """
  def get_recruiter_job!(id), do: Repo.get!(Recruiter_job, id)

  @doc """
  Creates a recruiter_job.

  ## Examples

      iex> create_recruiter_job(%{field: value})
      {:ok, %Recruiter_job{}}

      iex> create_recruiter_job(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_recruiter_job(attrs \\ %{}) do
    %Recruiter_job{}
    |> Recruiter_job.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a recruiter_job.

  ## Examples

      iex> update_recruiter_job(recruiter_job, %{field: new_value})
      {:ok, %Recruiter_job{}}

      iex> update_recruiter_job(recruiter_job, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_recruiter_job(%Recruiter_job{} = recruiter_job, attrs) do
    recruiter_job
    |> Recruiter_job.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Recruiter_job.

  ## Examples

      iex> delete_recruiter_job(recruiter_job)
      {:ok, %Recruiter_job{}}

      iex> delete_recruiter_job(recruiter_job)
      {:error, %Ecto.Changeset{}}

  """
  def delete_recruiter_job(%Recruiter_job{} = recruiter_job) do
    Repo.delete(recruiter_job)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking recruiter_job changes.

  ## Examples

      iex> change_recruiter_job(recruiter_job)
      %Ecto.Changeset{source: %Recruiter_job{}}

  """
  def change_recruiter_job(%Recruiter_job{} = recruiter_job) do
    Recruiter_job.changeset(recruiter_job, %{})
  end
end
