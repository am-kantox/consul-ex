#
# The MIT License (MIT)
#
# Copyright (c) 2014-2015 Undead Labs, LLC
#

defmodule Consul.Handler.Behaviour do
  @callback handle(result :: Consul.Response.t()) :: Consule.Endpoint.response()

  defmacro __using__(_) do
    quote do
      @behaviour Consul.Handler.Behaviour

      @impl Consul.Handler.Behaviour
      def handle(%{status_code: 200} = response),
        do: {:ok, response}

      def handle(response),
        do: {:error, response}

      defoverridable handle: 1
    end
  end
end
