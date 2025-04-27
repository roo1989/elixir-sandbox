defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck())
    assert deck_length == 20
  end

  test "shuffle returns a shuffled deck" do
    deck = Cards.create_deck()

    assert Cards.shuffle(deck) != deck

    # Another way would be refute.
    # refute Cards.shufflE(deck) == deck
  end

  test "calling deal with a hand size of one returns a list of a hand" do
    deck = Cards.create_deck()
    {hand, deck} = Cards.deal(deck, 1)

    assert hand == ["Ace of Spades"]
  end
end
