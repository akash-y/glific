defmodule Glific.Config do
  @moduledoc """
  This is the config file for Glific across all environments. We store sensible defaults
  here and allow the end-user to overwrite them via .env files
  """

  use Vapor.Planner

  dotenv()

  config :db,
         env([
           {:url, "DB_URL"},
           {:pool_size, "DB_POOL_SIZE", default: 10, map: &String.to_integer/1}
         ])

  config :web,
         env([
           {:port, "PORT", default: 4000, map: &String.to_integer/1}
         ])
end
