defmodule WeightedRandomTest do
  use ExUnit.Case
  doctest WeightedRandom

  # test "greets the world" do
  #   assert WeightedRandom.hello() == :world
  # end

  test "return the random one" do
    items = [apples: 10, oranges: 30, bananas: 60]
    random_list = 1..10_000_00 |> Enum.map(fn x -> WeightedRandom.weight_based_choice(items) end) |> IO.inspect()
    percentage_banana = random_list |> Enum.count(fn x -> x == :bananas end)


    assert percentage_banana/10_000_00 == 0.6
    # assert WeightedRandom.weight_based_choice(items) == %{}
  end
end
