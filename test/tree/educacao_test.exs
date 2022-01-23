defmodule Tree.EducacaoTest do
  use Tree.DataCase

  alias Tree.Educacao

  describe "entitie" do
    alias Tree.Educacao.Instituto

    import Tree.EducacaoFixtures

    @invalid_attrs %{}

    test "list_entitie/0 returns all entitie" do
      instituto = instituto_fixture()
      assert Educacao.list_entitie() == [instituto]
    end

    test "get_instituto!/1 returns the instituto with given id" do
      instituto = instituto_fixture()
      assert Educacao.get_instituto!(instituto.id) == instituto
    end

    test "create_instituto/1 with valid data creates a instituto" do
      valid_attrs = %{}

      assert {:ok, %Instituto{} = instituto} = Educacao.create_instituto(valid_attrs)
    end

    test "create_instituto/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Educacao.create_instituto(@invalid_attrs)
    end

    test "update_instituto/2 with valid data updates the instituto" do
      instituto = instituto_fixture()
      update_attrs = %{}

      assert {:ok, %Instituto{} = instituto} = Educacao.update_instituto(instituto, update_attrs)
    end

    test "update_instituto/2 with invalid data returns error changeset" do
      instituto = instituto_fixture()
      assert {:error, %Ecto.Changeset{}} = Educacao.update_instituto(instituto, @invalid_attrs)
      assert instituto == Educacao.get_instituto!(instituto.id)
    end

    test "delete_instituto/1 deletes the instituto" do
      instituto = instituto_fixture()
      assert {:ok, %Instituto{}} = Educacao.delete_instituto(instituto)
      assert_raise Ecto.NoResultsError, fn -> Educacao.get_instituto!(instituto.id) end
    end

    test "change_instituto/1 returns a instituto changeset" do
      instituto = instituto_fixture()
      assert %Ecto.Changeset{} = Educacao.change_instituto(instituto)
    end
  end

  describe "entities" do
    alias Tree.Educacao.Instituto

    import Tree.EducacaoFixtures

    @invalid_attrs %{entity_type: nil, inep: nil, name: nil}

    test "list_entities/0 returns all entities" do
      instituto = instituto_fixture()
      assert Educacao.list_entities() == [instituto]
    end

    test "get_instituto!/1 returns the instituto with given id" do
      instituto = instituto_fixture()
      assert Educacao.get_instituto!(instituto.id) == instituto
    end

    test "create_instituto/1 with valid data creates a instituto" do
      valid_attrs = %{entity_type: "some entity_type", inep: 42, name: "some name"}

      assert {:ok, %Instituto{} = instituto} = Educacao.create_instituto(valid_attrs)
      assert instituto.entity_type == "some entity_type"
      assert instituto.inep == 42
      assert instituto.name == "some name"
    end

    test "create_instituto/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Educacao.create_instituto(@invalid_attrs)
    end

    test "update_instituto/2 with valid data updates the instituto" do
      instituto = instituto_fixture()
      update_attrs = %{entity_type: "some updated entity_type", inep: 43, name: "some updated name"}

      assert {:ok, %Instituto{} = instituto} = Educacao.update_instituto(instituto, update_attrs)
      assert instituto.entity_type == "some updated entity_type"
      assert instituto.inep == 43
      assert instituto.name == "some updated name"
    end

    test "update_instituto/2 with invalid data returns error changeset" do
      instituto = instituto_fixture()
      assert {:error, %Ecto.Changeset{}} = Educacao.update_instituto(instituto, @invalid_attrs)
      assert instituto == Educacao.get_instituto!(instituto.id)
    end

    test "delete_instituto/1 deletes the instituto" do
      instituto = instituto_fixture()
      assert {:ok, %Instituto{}} = Educacao.delete_instituto(instituto)
      assert_raise Ecto.NoResultsError, fn -> Educacao.get_instituto!(instituto.id) end
    end

    test "change_instituto/1 returns a instituto changeset" do
      instituto = instituto_fixture()
      assert %Ecto.Changeset{} = Educacao.change_instituto(instituto)
    end
  end
end
