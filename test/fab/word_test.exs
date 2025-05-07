defmodule Fab.WordTest do
  use ExUnit.Case, async: true

  setup do
    Application.put_env(:fab, :seed, 0)
    :ok
  end

  doctest Fab.Word
end
