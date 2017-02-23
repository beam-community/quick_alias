defmodule QuickAlias do
  defmacro __using__({_, _, atom_module}) do
    module = Module.concat(atom_module)

    loaded_modules()
    |> get_children_of(module)
    |> Enum.map(&build_quoted_alias/1)
    |> build_quoted_block
  end

  defp build_quoted_block(aliases), do: {:__block__, [], aliases}

  defp build_quoted_alias(string_parts) do
    atom_parts = string_parts |> Enum.map(&String.to_atom/1)
    {:alias, [context: QuickAlias],
     [{:__aliases__, [alias: false], atom_parts}]}
  end

  def get_children_of(loaded, parent) do
    "Elixir." <> parent_name = to_string(parent)

    loaded
    |> Enum.map(&Module.split/1)
    |> Enum.filter(&(child_of?(parent_name, &1)))
  end

  defp child_of?(parent_name, [parent_name | _]), do: true
  defp child_of?(_, _), do: false

  defp loaded_modules do
    :code.all_loaded
    |> Enum.map(fn({name, _}) -> to_string(name) end)
    |> Enum.filter(&is_elixir_module?/1)
    |> Enum.map(&(String.to_atom(&1)))
  end

  defp is_elixir_module?("Elixir." <> _), do: true
  defp is_elixir_module?(_), do: false
end
