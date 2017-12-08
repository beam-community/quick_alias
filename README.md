# QuickAlias

**QuickAlias is part of the [thoughtbot Elixir family][elixir-phoenix] of projects.**

QuickAlias allows aliasing entire namespaces of modules in your `.iex.exs`
files.

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
  [
    {:quick_alias, "~> 0.1.0"},
  ]
end
```

## Contributing

See the [CONTRIBUTING] document.
Thank you, [contributors]!

  [CONTRIBUTING]: CONTRIBUTING.md
  [contributors]: https://github.com/thoughtbot/templates/graphs/contributors

## License

QuickAlias is (c) 2016 Blake Williams, George Brocklehurst, and thoughtbot, inc.
It contains free software that may be redistributed under the terms specified in
the [LICENSE] file.

[LICENSE]: /LICENSE

## About

![thoughtbot](https://thoughtbot.com/logo.png)

QuickAlias is maintained and funded by thoughtbot, inc. The names and logos for
thoughtbot are trademarks of thoughtbot, inc.

We love open source software, Elixir, and Phoenix. See [our other Elixir
projects][elixir-phoenix], or [hire our Elixir Phoenix development team][hire]
to design, develop, and grow your product.

[elixir-phoenix]: https://thoughtbot.com/services/elixir-phoenix?utm_source=github
[hire]: https://thoughtbot.com?utm_source=github
