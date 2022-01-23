defmodule Tree.EducacaoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tree.Educacao` context.
  """

  @doc """
  Generate a instituto.
  """
  def instituto_fixture(attrs \\ %{}) do
    {:ok, instituto} =
      attrs
      |> Enum.into(%{

      })
      |> Tree.Educacao.create_instituto()

    instituto
  end

  @doc """
  Generate a instituto.
  """
  def instituto_fixture(attrs \\ %{}) do
    {:ok, instituto} =
      attrs
      |> Enum.into(%{
        entity_type: "some entity_type",
        inep: 42,
        name: "some name"
      })
      |> Tree.Educacao.create_instituto()

    instituto
  end
end
