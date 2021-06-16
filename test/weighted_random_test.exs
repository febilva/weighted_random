defmodule WeightedRandomTest do
  use ExUnit.Case
  doctest WeightedRandom

  # test "greets the world" do
  #   assert WeightedRandom.hello() == :world
  # end

  test "return the random one" do
    items = [apples: 10, oranges: 30, bananas: 60]

    random_list =
      1..10_000_00
      |> Enum.map(fn x -> WeightedRandom.weight_based_choice(items) end)

    banana_count = random_list |> Enum.count(fn x -> x == :bananas end)
    percentage = (banana_count * 100 / 10_000_00) |> round

    assert percentage in 60..61
  end

  test "retuns th " do
    items = [A: 10, B: 10, C: 10, D: 10, E: 10, F: 10, G: 10, I: 10, J: 10, K: 10]

    random_list =
      1..1000
      |> Enum.map(fn x -> WeightedRandom.weight_based_choice(items) end)

    count_of_A = random_list |> Enum.count(fn x -> x == :A end)
    percentage = (count_of_A * 100 / 1000) |> round
    assert percentage in 0..10
  end
end
