defmodule Fab.Word do
  @moduledoc """
  Functions for generating random words.

  ## Supported Locales

    - `de`
    - `de_AT`
    - `en`
    - `fa`
    - `hu`
    - `ko`
    - `nb_NO`

  Some locales may not support all `Fab.Word` functions. If a function has not
  been implemented Fab will fallback to the `en` locale.
  """

  import Fab.Locale
  import Fab.Randomizer

  @callback adjective() :: [String.t()]

  @callback adverb() :: [String.t()]

  @callback conjunction() :: [String.t()]

  @callback interjection() :: [String.t()]

  @callback noun() :: [String.t()]

  @callback preposition() :: [String.t()]

  @callback verb() :: [String.t()]

  @optional_callbacks [
    adjective: 0,
    adverb: 0,
    conjunction: 0,
    interjection: 0,
    noun: 0,
    preposition: 0,
    verb: 0
  ]

  @doc """
  Returns a random adjective.

  ## Examples

      iex> Fab.Word.adjective()
      "bitter"
  """
  @spec adjective :: String.t()
  def adjective do
    __MODULE__
    |> localize(:adjective, [])
    |> random()
  end

  @doc """
  Returns a random adverb.

  ## Examples

      iex> Fab.Word.adverb()
      "lightly"
  """
  @spec adverb :: String.t()
  def adverb do
    __MODULE__
    |> localize(:adverb, [])
    |> random()
  end

  @doc """
  Returns a random conjunction.

  ## Examples

      iex> Fab.Word.conjunction()
      "provided"
  """
  @spec conjunction :: String.t()
  def conjunction do
    __MODULE__
    |> localize(:conjunction, [])
    |> random()
  end

  @doc """
  Returns a random interjection.

  ## Examples

      iex> Fab.Word.interjection()
      "ugh"
  """
  @spec interjection :: String.t()
  def interjection do
    __MODULE__
    |> localize(:interjection, [])
    |> random()
  end

  @doc """
  Returns a random noun.

  ## Examples

      iex> Fab.Word.noun()
      "bathhouse"
  """
  @spec noun :: String.t()
  def noun do
    __MODULE__
    |> localize(:noun, [])
    |> random()
  end

  @doc """
  Returns a random preposition.

  ## Examples

      iex> Fab.Word.preposition()
      "lest"
  """
  @spec preposition :: String.t()
  def preposition do
    __MODULE__
    |> localize(:preposition, [])
    |> random()
  end

  @doc """
  Returns a random verb.

  ## Examples

      iex> Fab.Word.verb()
      "bind"
  """
  @spec verb :: String.t()
  def verb do
    __MODULE__
    |> localize(:verb, [])
    |> random()
  end
end
