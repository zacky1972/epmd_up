defmodule EpmdUp do
  @moduledoc """
  Documentation for `EpmdUp`.
  """

  require Logger

  @doc """
  Checks if the Erlang Port Mapper Daemon (`epmd`) is active and accepting connections.

  This function attempts to establish a TCP connection to the `epmd` port (4369) on localhost.
  If the connection is successful, it means `epmd` is running and accepting connections.

  ## Returns

    * `true` - if `epmd` is active and accepting connections
    * `false` - if `epmd` is not running or not accepting connections
  """
  @spec is_active?() :: boolean()
  def is_active?() do
    case :net_adm.names() do
      {:ok, _} -> true
      {:error, _} -> false
    end    
  end
end
