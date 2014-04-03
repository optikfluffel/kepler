defmodule Kepler.Controllers.Main do
  @moduledoc """
    Handles the main routes.
  """

  use Sugar.Controller

  @doc """
    Returns `Hello world` with status code `200`.
  """
  def index(conn, []) do
    raw conn |> resp(200, "Hello world")
  end
end
