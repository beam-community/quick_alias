# QuickAlias

A package for aliasing entire namespaces of modules in your `.iex.exs` files.

## Usage

Before:

```elixir
alias MyProject.Foo
alias MyProject.Bar
alias MyProject.Baz
```

After:

```elixir
use QuickAlias, MyProject
```

## Installation
Add `quick_alias` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:quick_alias, "~> 0.1.0"}]
end
```
