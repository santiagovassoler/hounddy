defmodule HounddyWeb.ErrorHelper do
  def format_errors(changeset) do
    errors =
      changeset.errors
      |> Enum.map(fn {key, {value, context}} ->
        details =
          context
          |> Enum.map(fn {a, b} -> %{"#{a}": b} end)

        [message: "#{key} #{value}", details: details]
      end)

    {:error, errors}
  end
end
