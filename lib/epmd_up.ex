defmodule EpmdUp do
  @moduledoc """
  A simple Elixir module to check and manage the Erlang Port Mapper Daemon (`epmd`).
  """

  require Logger

  @doc """
  Starts the Erlang Port Mapper Daemon (`epmd`) if it's not already running.
  """
  @spec activate() :: :ok | {:error, term()}
  def activate() do
    case active?() do
      true -> :ok
      _ -> start_epmd()
    end
  end

  @doc """
  Checks if the Erlang Port Mapper Daemon (`epmd`) is active and accepting connections.

  This function attempts to establish a TCP connection to the `epmd` port (4369) on localhost.
  If the connection is successful, it means `epmd` is running and accepting connections.

  ## Returns

    * `true` - if `epmd` is active and accepting connections
    * `false` - if `epmd` is not running or not accepting connections
  """
  @spec active?() :: boolean()
  def active? do
    case :net_adm.names() do
      {:ok, _} -> true
      {:error, _} -> false
    end
  end

  @doc """
  Finds the full path of the Erlang Port Mapper Daemon (`epmd`) executable in the system.

  Returns `nil` if the executable cannot be found in the system's PATH.
  """
  @spec find_epmd_executable() :: binary() | nil
  def find_epmd_executable do
    System.find_executable("epmd")
  end

  defp start_epmd() do
    case find_epmd_executable() do
      nil ->
        {:error, "Not found empd"}

      epmd_cmd ->
        spawn(fn -> launch_epmd(epmd_cmd) end)
        Logger.info("waiting launching epmd...")
        wait_launching_epmd(5)
    end
  end

  defp launch_epmd(epmd_cmd) do
    case System.cmd(epmd_cmd, [], parallelism: true) do
      {result, 0} ->
        Logger.info("epmd: #{result}")
        :ok

      {_, exit_code} ->
        Logger.info("epmd: error_code: #{exit_code}")
        {:error, exit_code}
    end
  end

  defp wait_launching_epmd(0), do: {:error, "Fail to launch epmd."}

  defp wait_launching_epmd(count) do
    if active?() do
      :ok
    else
      Process.sleep(1000)
      wait_launching_epmd(count - 1)
    end
  end
end
