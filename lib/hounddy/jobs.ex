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

  alias Hounddy.Jobs.User_job

  @doc """
  Returns the list of user_jobs.

  ## Examples

      iex> list_user_jobs()
      [%User_job{}, ...]

  """
  def list_user_jobs do
    Repo.all(User_job)
  end

  @doc """
  Gets a single user_job.

  Raises `Ecto.NoResultsError` if the User job does not exist.

  ## Examples

      iex> get_user_job!(123)
      %User_job{}

      iex> get_user_job!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user_job!(id), do: Repo.get!(User_job, id)

  @doc """
  Creates a user_job.

  ## Examples

      iex> create_user_job(%{field: value})
      {:ok, %User_job{}}

      iex> create_user_job(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user_job(attrs \\ %{}) do
    %User_job{}
    |> User_job.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user_job.

  ## Examples

      iex> update_user_job(user_job, %{field: new_value})
      {:ok, %User_job{}}

      iex> update_user_job(user_job, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user_job(%User_job{} = user_job, attrs) do
    user_job
    |> User_job.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a User_job.

  ## Examples

      iex> delete_user_job(user_job)
      {:ok, %User_job{}}

      iex> delete_user_job(user_job)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user_job(%User_job{} = user_job) do
    Repo.delete(user_job)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user_job changes.

  ## Examples

      iex> change_user_job(user_job)
      %Ecto.Changeset{source: %User_job{}}

  """
  def change_user_job(%User_job{} = user_job) do
    User_job.changeset(user_job, %{})
  end
end
