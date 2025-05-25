# EpmdUp

A simple Elixir module to check if the Erlang Port Mapper Daemon (`epmd`) is running.

## Overview

EpmdUp provides functionality to verify the status of `epmd`, which is a critical component in Erlang/Elixir distributed systems. The Erlang Port Mapper Daemon is responsible for tracking which nodes are running on a host and which ports they are using for distributed communication.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `epmd_up` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:epmd_up, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/epmd_up>.

## Tested Platforms

* Ubuntu 22.04 / Elixir 1.18 / OTP 27
* Ubuntu 22.04 / Elixir 1.17 / OTP 27
* Ubuntu 22.04 / Elixir 1.16 / OTP 26
* Ubuntu 22.04 / Elixir 1.15 / OTP 25
* Windows 2022 / Elixir 1.18 / OTP 27
* Windows 2019 / Elixir 1.18 / OTP 27

## License

Copyright (c) 2025 University of Kitakyushu

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
