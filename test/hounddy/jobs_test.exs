defmodule Hounddy.JobsTest do
  use Hounddy.DataCase

  alias Hounddy.Jobs

  describe "jobs" do
    alias Hounddy.Jobs.Job

    @valid_attrs %{description: "some description", status: "some status"}
    @update_attrs %{description: "some updated description", status: "some updated status"}
    @invalid_attrs %{description: nil, status: nil}

    def job_fixture(attrs \\ %{}) do
      {:ok, job} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Jobs.create_job()

      job
    end

    test "list_jobs/0 returns all jobs" do
      job = job_fixture()
      assert Jobs.list_jobs() == [job]
    end

    test "get_job!/1 returns the job with given id" do
      job = job_fixture()
      assert Jobs.get_job!(job.id) == job
    end

    test "create_job/1 with valid data creates a job" do
      assert {:ok, %Job{} = job} = Jobs.create_job(@valid_attrs)
      assert job.description == "some description"
      assert job.status == "some status"
    end

    test "create_job/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Jobs.create_job(@invalid_attrs)
    end

    test "update_job/2 with valid data updates the job" do
      job = job_fixture()
      assert {:ok, %Job{} = job} = Jobs.update_job(job, @update_attrs)
      assert job.description == "some updated description"
      assert job.status == "some updated status"
    end

    test "update_job/2 with invalid data returns error changeset" do
      job = job_fixture()
      assert {:error, %Ecto.Changeset{}} = Jobs.update_job(job, @invalid_attrs)
      assert job == Jobs.get_job!(job.id)
    end

    test "delete_job/1 deletes the job" do
      job = job_fixture()
      assert {:ok, %Job{}} = Jobs.delete_job(job)
      assert_raise Ecto.NoResultsError, fn -> Jobs.get_job!(job.id) end
    end

    test "change_job/1 returns a job changeset" do
      job = job_fixture()
      assert %Ecto.Changeset{} = Jobs.change_job(job)
    end
  end

  describe "recruiter_jobs" do
    alias Hounddy.Jobs.Recruiter_job

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def recruiter_job_fixture(attrs \\ %{}) do
      {:ok, recruiter_job} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Jobs.create_recruiter_job()

      recruiter_job
    end

    test "list_recruiter_jobs/0 returns all recruiter_jobs" do
      recruiter_job = recruiter_job_fixture()
      assert Jobs.list_recruiter_jobs() == [recruiter_job]
    end

    test "get_recruiter_job!/1 returns the recruiter_job with given id" do
      recruiter_job = recruiter_job_fixture()
      assert Jobs.get_recruiter_job!(recruiter_job.id) == recruiter_job
    end

    test "create_recruiter_job/1 with valid data creates a recruiter_job" do
      assert {:ok, %Recruiter_job{} = recruiter_job} = Jobs.create_recruiter_job(@valid_attrs)
    end

    test "create_recruiter_job/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Jobs.create_recruiter_job(@invalid_attrs)
    end

    test "update_recruiter_job/2 with valid data updates the recruiter_job" do
      recruiter_job = recruiter_job_fixture()
      assert {:ok, %Recruiter_job{} = recruiter_job} = Jobs.update_recruiter_job(recruiter_job, @update_attrs)
    end

    test "update_recruiter_job/2 with invalid data returns error changeset" do
      recruiter_job = recruiter_job_fixture()
      assert {:error, %Ecto.Changeset{}} = Jobs.update_recruiter_job(recruiter_job, @invalid_attrs)
      assert recruiter_job == Jobs.get_recruiter_job!(recruiter_job.id)
    end

    test "delete_recruiter_job/1 deletes the recruiter_job" do
      recruiter_job = recruiter_job_fixture()
      assert {:ok, %Recruiter_job{}} = Jobs.delete_recruiter_job(recruiter_job)
      assert_raise Ecto.NoResultsError, fn -> Jobs.get_recruiter_job!(recruiter_job.id) end
    end

    test "change_recruiter_job/1 returns a recruiter_job changeset" do
      recruiter_job = recruiter_job_fixture()
      assert %Ecto.Changeset{} = Jobs.change_recruiter_job(recruiter_job)
    end
  end

  describe "user_jobs" do
    alias Hounddy.Jobs.User_job

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def user_job_fixture(attrs \\ %{}) do
      {:ok, user_job} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Jobs.create_user_job()

      user_job
    end

    test "list_user_jobs/0 returns all user_jobs" do
      user_job = user_job_fixture()
      assert Jobs.list_user_jobs() == [user_job]
    end

    test "get_user_job!/1 returns the user_job with given id" do
      user_job = user_job_fixture()
      assert Jobs.get_user_job!(user_job.id) == user_job
    end

    test "create_user_job/1 with valid data creates a user_job" do
      assert {:ok, %User_job{} = user_job} = Jobs.create_user_job(@valid_attrs)
    end

    test "create_user_job/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Jobs.create_user_job(@invalid_attrs)
    end

    test "update_user_job/2 with valid data updates the user_job" do
      user_job = user_job_fixture()
      assert {:ok, %User_job{} = user_job} = Jobs.update_user_job(user_job, @update_attrs)
    end

    test "update_user_job/2 with invalid data returns error changeset" do
      user_job = user_job_fixture()
      assert {:error, %Ecto.Changeset{}} = Jobs.update_user_job(user_job, @invalid_attrs)
      assert user_job == Jobs.get_user_job!(user_job.id)
    end

    test "delete_user_job/1 deletes the user_job" do
      user_job = user_job_fixture()
      assert {:ok, %User_job{}} = Jobs.delete_user_job(user_job)
      assert_raise Ecto.NoResultsError, fn -> Jobs.get_user_job!(user_job.id) end
    end

    test "change_user_job/1 returns a user_job changeset" do
      user_job = user_job_fixture()
      assert %Ecto.Changeset{} = Jobs.change_user_job(user_job)
    end
  end
end
