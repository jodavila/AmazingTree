defmodule Tree.Educacao do
  @moduledoc """
  The Educacao context.
  """

  import Ecto.Query, warn: false
  alias Tree.Repo

  alias Tree.Educacao.Instituto

  @doc """
  Returns the list of entities.

  ## Examples

      iex> list_entities()
      [%Instituto{}, ...]

  """
  def list_entities do
    Repo.all(Instituto)
  end

  @doc """
  Gets a single instituto.

  Raises `Ecto.NoResultsError` if the Instituto does not exist.

  ## Examples

      iex> get_instituto!(123)
      %Instituto{}

      iex> get_instituto!(456)
      ** (Ecto.NoResultsError)

  """
  def get_instituto!(id), do: Repo.get!(Instituto, id)

  @doc """
  Creates a instituto.

  ## Examples

      iex> create_instituto(%{field: value})
      {:ok, %Instituto{}}

      iex> create_instituto(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_instituto(attrs \\ %{}) do
    %Instituto{}
    |> Instituto.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a instituto.

  ## Examples

      iex> update_instituto(instituto, %{field: new_value})
      {:ok, %Instituto{}}

      iex> update_instituto(instituto, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_instituto(%Instituto{} = instituto, attrs) do
    instituto
    |> Instituto.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a instituto.

  ## Examples

      iex> delete_instituto(instituto)
      {:ok, %Instituto{}}

      iex> delete_instituto(instituto)
      {:error, %Ecto.Changeset{}}

  """
  def delete_instituto(%Instituto{} = instituto) do
    Repo.delete(instituto)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking instituto changes.

  ## Examples

      iex> change_instituto(instituto)
      %Ecto.Changeset{data: %Instituto{}}

  """
  def change_instituto(%Instituto{} = instituto, attrs \\ %{}) do
    Instituto.changeset(instituto, attrs)
  end
end
