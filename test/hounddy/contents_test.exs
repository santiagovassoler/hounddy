defmodule Hounddy.ContentsTest do
  use Hounddy.DataCase

  alias Hounddy.Content

  describe "skills" do
    alias Hounddy.Content.Skill

    @valid_attrs %{skill: "some skill"}
    @update_attrs %{skill: "some updated skill"}
    @invalid_attrs %{skill: nil}

    def skill_fixture(attrs \\ %{}) do
      {:ok, skill} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_skill()

      skill
    end

    test "list_skills/0 returns all skills" do
      skill = skill_fixture()
      assert Content.list_skills() == [skill]
    end

    test "get_skill!/1 returns the skill with given id" do
      skill = skill_fixture()
      assert Content.get_skill!(skill.id) == skill
    end

    test "create_skill/1 with valid data creates a skill" do
      assert {:ok, %Skill{} = skill} = Content.create_skill(@valid_attrs)
      assert skill.skill == "some skill"
    end

    test "create_skill/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_skill(@invalid_attrs)
    end

    test "update_skill/2 with valid data updates the skill" do
      skill = skill_fixture()
      assert {:ok, %Skill{} = skill} = Content.update_skill(skill, @update_attrs)
      assert skill.skill == "some updated skill"
    end

    test "update_skill/2 with invalid data returns error changeset" do
      skill = skill_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_skill(skill, @invalid_attrs)
      assert skill == Content.get_skill!(skill.id)
    end

    test "delete_skill/1 deletes the skill" do
      skill = skill_fixture()
      assert {:ok, %Skill{}} = Content.delete_skill(skill)
      assert_raise Ecto.NoResultsError, fn -> Content.get_skill!(skill.id) end
    end

    test "change_skill/1 returns a skill changeset" do
      skill = skill_fixture()
      assert %Ecto.Changeset{} = Content.change_skill(skill)
    end
  end

  describe "careers" do
    alias Hounddy.Content.Career

    @valid_attrs %{career: "some career"}
    @update_attrs %{career: "some updated career"}
    @invalid_attrs %{career: nil}

    def career_fixture(attrs \\ %{}) do
      {:ok, career} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_career()

      career
    end

    test "list_careers/0 returns all careers" do
      career = career_fixture()
      assert Content.list_careers() == [career]
    end

    test "get_career!/1 returns the career with given id" do
      career = career_fixture()
      assert Content.get_career!(career.id) == career
    end

    test "create_career/1 with valid data creates a career" do
      assert {:ok, %Career{} = career} = Content.create_career(@valid_attrs)
      assert career.career == "some career"
    end

    test "create_career/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_career(@invalid_attrs)
    end

    test "update_career/2 with valid data updates the career" do
      career = career_fixture()
      assert {:ok, %Career{} = career} = Content.update_career(career, @update_attrs)
      assert career.career == "some updated career"
    end

    test "update_career/2 with invalid data returns error changeset" do
      career = career_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_career(career, @invalid_attrs)
      assert career == Content.get_career!(career.id)
    end

    test "delete_career/1 deletes the career" do
      career = career_fixture()
      assert {:ok, %Career{}} = Content.delete_career(career)
      assert_raise Ecto.NoResultsError, fn -> Content.get_career!(career.id) end
    end

    test "change_career/1 returns a career changeset" do
      career = career_fixture()
      assert %Ecto.Changeset{} = Content.change_career(career)
    end
  end

  describe "educations" do
    alias Hounddy.Content.Education

    @valid_attrs %{
      city: "some city",
      country: "some country",
      institution_name: "some institution_name"
    }
    @update_attrs %{
      city: "some updated city",
      country: "some updated country",
      institution_name: "some updated institution_name"
    }
    @invalid_attrs %{city: nil, country: nil, institution_name: nil}

    def education_fixture(attrs \\ %{}) do
      {:ok, education} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_education()

      education
    end

    test "list_educations/0 returns all educations" do
      education = education_fixture()
      assert Content.list_educations() == [education]
    end

    test "get_education!/1 returns the education with given id" do
      education = education_fixture()
      assert Content.get_education!(education.id) == education
    end

    test "create_education/1 with valid data creates a education" do
      assert {:ok, %Education{} = education} = Content.create_education(@valid_attrs)
      assert education.city == "some city"
      assert education.country == "some country"
      assert education.institution_name == "some institution_name"
    end

    test "create_education/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_education(@invalid_attrs)
    end

    test "update_education/2 with valid data updates the education" do
      education = education_fixture()
      assert {:ok, %Education{} = education} = Content.update_education(education, @update_attrs)
      assert education.city == "some updated city"
      assert education.country == "some updated country"
      assert education.institution_name == "some updated institution_name"
    end

    test "update_education/2 with invalid data returns error changeset" do
      education = education_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_education(education, @invalid_attrs)
      assert education == Content.get_education!(education.id)
    end

    test "delete_education/1 deletes the education" do
      education = education_fixture()
      assert {:ok, %Education{}} = Content.delete_education(education)
      assert_raise Ecto.NoResultsError, fn -> Content.get_education!(education.id) end
    end

    test "change_education/1 returns a education changeset" do
      education = education_fixture()
      assert %Ecto.Changeset{} = Content.change_education(education)
    end
  end

  describe "candidate_educations" do
    alias Hounddy.Content.Candidate_education

    @valid_attrs %{completed_at: 42}
    @update_attrs %{completed_at: 43}
    @invalid_attrs %{completed_at: nil}

    def candidate_education_fixture(attrs \\ %{}) do
      {:ok, candidate_education} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_candidate_education()

      candidate_education
    end

    test "list_candidate_educations/0 returns all candidate_educations" do
      candidate_education = candidate_education_fixture()
      assert Content.list_candidate_educations() == [candidate_education]
    end

    test "get_candidate_education!/1 returns the candidate_education with given id" do
      candidate_education = candidate_education_fixture()
      assert Content.get_candidate_education!(candidate_education.id) == candidate_education
    end

    test "create_candidate_education/1 with valid data creates a candidate_education" do
      assert {:ok, %Candidate_education{} = candidate_education} =
               Content.create_candidate_education(@valid_attrs)

      assert candidate_education.completed_at == 42
    end

    test "create_candidate_education/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_candidate_education(@invalid_attrs)
    end

    test "update_candidate_education/2 with valid data updates the candidate_education" do
      candidate_education = candidate_education_fixture()

      assert {:ok, %Candidate_education{} = candidate_education} =
               Content.update_candidate_education(candidate_education, @update_attrs)

      assert candidate_education.completed_at == 43
    end

    test "update_candidate_education/2 with invalid data returns error changeset" do
      candidate_education = candidate_education_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Content.update_candidate_education(candidate_education, @invalid_attrs)

      assert candidate_education == Content.get_candidate_education!(candidate_education.id)
    end

    test "delete_candidate_education/1 deletes the candidate_education" do
      candidate_education = candidate_education_fixture()

      assert {:ok, %Candidate_education{}} =
               Content.delete_candidate_education(candidate_education)

      assert_raise Ecto.NoResultsError, fn ->
        Content.get_candidate_education!(candidate_education.id)
      end
    end

    test "change_candidate_education/1 returns a candidate_education changeset" do
      candidate_education = candidate_education_fixture()
      assert %Ecto.Changeset{} = Content.change_candidate_education(candidate_education)
    end
  end

  describe "experiences" do
    alias Hounddy.Content.Experience

    @valid_attrs %{
      company_name: "some company_name",
      date_from: "some date_from",
      date_to: "some date_to",
      description: "some description"
    }
    @update_attrs %{
      company_name: "some updated company_name",
      date_from: "some updated date_from",
      date_to: "some updated date_to",
      description: "some updated description"
    }
    @invalid_attrs %{company_name: nil, date_from: nil, date_to: nil, description: nil}

    def experience_fixture(attrs \\ %{}) do
      {:ok, experience} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_experience()

      experience
    end

    test "list_experiences/0 returns all experiences" do
      experience = experience_fixture()
      assert Content.list_experiences() == [experience]
    end

    test "get_experience!/1 returns the experience with given id" do
      experience = experience_fixture()
      assert Content.get_experience!(experience.id) == experience
    end

    test "create_experience/1 with valid data creates a experience" do
      assert {:ok, %Experience{} = experience} = Content.create_experience(@valid_attrs)
      assert experience.company_name == "some company_name"
      assert experience.date_from == "some date_from"
      assert experience.date_to == "some date_to"
      assert experience.description == "some description"
    end

    test "create_experience/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_experience(@invalid_attrs)
    end

    test "update_experience/2 with valid data updates the experience" do
      experience = experience_fixture()

      assert {:ok, %Experience{} = experience} =
               Content.update_experience(experience, @update_attrs)

      assert experience.company_name == "some updated company_name"
      assert experience.date_from == "some updated date_from"
      assert experience.date_to == "some updated date_to"
      assert experience.description == "some updated description"
    end

    test "update_experience/2 with invalid data returns error changeset" do
      experience = experience_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_experience(experience, @invalid_attrs)
      assert experience == Content.get_experience!(experience.id)
    end

    test "delete_experience/1 deletes the experience" do
      experience = experience_fixture()
      assert {:ok, %Experience{}} = Content.delete_experience(experience)
      assert_raise Ecto.NoResultsError, fn -> Content.get_experience!(experience.id) end
    end

    test "change_experience/1 returns a experience changeset" do
      experience = experience_fixture()
      assert %Ecto.Changeset{} = Content.change_experience(experience)
    end
  end
end
