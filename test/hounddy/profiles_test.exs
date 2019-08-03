defmodule Hounddy.ProfilesTest do
  use Hounddy.DataCase

  alias Hounddy.Profiles

  describe "candidates" do
    alias Hounddy.Profiles.Candidate

    @valid_attrs %{about_me: "some about_me", city: "some city", country: "some country", gender: "some gender", video_url: "some video_url"}
    @update_attrs %{about_me: "some updated about_me", city: "some updated city", country: "some updated country", gender: "some updated gender", video_url: "some updated video_url"}
    @invalid_attrs %{about_me: nil, city: nil, country: nil, gender: nil, video_url: nil}

    def candidate_fixture(attrs \\ %{}) do
      {:ok, candidate} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Profiles.create_candidate()

      candidate
    end

    test "list_candidates/0 returns all candidates" do
      candidate = candidate_fixture()
      assert Profiles.list_candidates() == [candidate]
    end

    test "get_candidate!/1 returns the candidate with given id" do
      candidate = candidate_fixture()
      assert Profiles.get_candidate!(candidate.id) == candidate
    end

    test "create_candidate/1 with valid data creates a candidate" do
      assert {:ok, %Candidate{} = candidate} = Profiles.create_candidate(@valid_attrs)
      assert candidate.about_me == "some about_me"
      assert candidate.city == "some city"
      assert candidate.country == "some country"
      assert candidate.gender == "some gender"
      assert candidate.video_url == "some video_url"
    end

    test "create_candidate/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Profiles.create_candidate(@invalid_attrs)
    end

    test "update_candidate/2 with valid data updates the candidate" do
      candidate = candidate_fixture()
      assert {:ok, %Candidate{} = candidate} = Profiles.update_candidate(candidate, @update_attrs)
      assert candidate.about_me == "some updated about_me"
      assert candidate.city == "some updated city"
      assert candidate.country == "some updated country"
      assert candidate.gender == "some updated gender"
      assert candidate.video_url == "some updated video_url"
    end

    test "update_candidate/2 with invalid data returns error changeset" do
      candidate = candidate_fixture()
      assert {:error, %Ecto.Changeset{}} = Profiles.update_candidate(candidate, @invalid_attrs)
      assert candidate == Profiles.get_candidate!(candidate.id)
    end

    test "delete_candidate/1 deletes the candidate" do
      candidate = candidate_fixture()
      assert {:ok, %Candidate{}} = Profiles.delete_candidate(candidate)
      assert_raise Ecto.NoResultsError, fn -> Profiles.get_candidate!(candidate.id) end
    end

    test "change_candidate/1 returns a candidate changeset" do
      candidate = candidate_fixture()
      assert %Ecto.Changeset{} = Profiles.change_candidate(candidate)
    end
  end

  describe "recruiters" do
    alias Hounddy.Profiles.Recruiter

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def recruiter_fixture(attrs \\ %{}) do
      {:ok, recruiter} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Profiles.create_recruiter()

      recruiter
    end

    test "list_recruiters/0 returns all recruiters" do
      recruiter = recruiter_fixture()
      assert Profiles.list_recruiters() == [recruiter]
    end

    test "get_recruiter!/1 returns the recruiter with given id" do
      recruiter = recruiter_fixture()
      assert Profiles.get_recruiter!(recruiter.id) == recruiter
    end

    test "create_recruiter/1 with valid data creates a recruiter" do
      assert {:ok, %Recruiter{} = recruiter} = Profiles.create_recruiter(@valid_attrs)
    end

    test "create_recruiter/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Profiles.create_recruiter(@invalid_attrs)
    end

    test "update_recruiter/2 with valid data updates the recruiter" do
      recruiter = recruiter_fixture()
      assert {:ok, %Recruiter{} = recruiter} = Profiles.update_recruiter(recruiter, @update_attrs)
    end

    test "update_recruiter/2 with invalid data returns error changeset" do
      recruiter = recruiter_fixture()
      assert {:error, %Ecto.Changeset{}} = Profiles.update_recruiter(recruiter, @invalid_attrs)
      assert recruiter == Profiles.get_recruiter!(recruiter.id)
    end

    test "delete_recruiter/1 deletes the recruiter" do
      recruiter = recruiter_fixture()
      assert {:ok, %Recruiter{}} = Profiles.delete_recruiter(recruiter)
      assert_raise Ecto.NoResultsError, fn -> Profiles.get_recruiter!(recruiter.id) end
    end

    test "change_recruiter/1 returns a recruiter changeset" do
      recruiter = recruiter_fixture()
      assert %Ecto.Changeset{} = Profiles.change_recruiter(recruiter)
    end
  end

  describe "companies" do
    alias Hounddy.Profiles.Company

    @valid_attrs %{name: "some name", website_url: "some website_url"}
    @update_attrs %{name: "some updated name", website_url: "some updated website_url"}
    @invalid_attrs %{name: nil, website_url: nil}

    def company_fixture(attrs \\ %{}) do
      {:ok, company} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Profiles.create_company()

      company
    end

    test "list_companies/0 returns all companies" do
      company = company_fixture()
      assert Profiles.list_companies() == [company]
    end

    test "get_company!/1 returns the company with given id" do
      company = company_fixture()
      assert Profiles.get_company!(company.id) == company
    end

    test "create_company/1 with valid data creates a company" do
      assert {:ok, %Company{} = company} = Profiles.create_company(@valid_attrs)
      assert company.name == "some name"
      assert company.website_url == "some website_url"
    end

    test "create_company/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Profiles.create_company(@invalid_attrs)
    end

    test "update_company/2 with valid data updates the company" do
      company = company_fixture()
      assert {:ok, %Company{} = company} = Profiles.update_company(company, @update_attrs)
      assert company.name == "some updated name"
      assert company.website_url == "some updated website_url"
    end

    test "update_company/2 with invalid data returns error changeset" do
      company = company_fixture()
      assert {:error, %Ecto.Changeset{}} = Profiles.update_company(company, @invalid_attrs)
      assert company == Profiles.get_company!(company.id)
    end

    test "delete_company/1 deletes the company" do
      company = company_fixture()
      assert {:ok, %Company{}} = Profiles.delete_company(company)
      assert_raise Ecto.NoResultsError, fn -> Profiles.get_company!(company.id) end
    end

    test "change_company/1 returns a company changeset" do
      company = company_fixture()
      assert %Ecto.Changeset{} = Profiles.change_company(company)
    end
  end
end
