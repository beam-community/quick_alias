defmodule Other.NotLoaded do
  def func, do: true
end

defmodule Parent.FirstChild do
  def func, do: true
end

defmodule Parent.SecondChild do
  def func, do: false
end

defmodule QuickAliasTest do
  use ExUnit.Case
  doctest QuickAlias

  test "aliases module" do
    assert_raise UndefinedFunctionError, &FirstChild.func/0
    assert_raise UndefinedFunctionError, &SecondChild.func/0
    assert_raise UndefinedFunctionError, &NotLoaded.func/0

    use QuickAlias, Parent

    assert Parent.FirstChild.func == FirstChild.func
    assert Parent.SecondChild.func == SecondChild.func
    assert_raise UndefinedFunctionError, &NotLoaded.func/0
  end
end
