defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of cards.
  """

  @doc """
    Returns a list of strings representing a deck of playing cards.
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for card <- values, suit <- suits do
      "#{card} of #{suit}"
    end
  end

  @doc """
    Returns a list of strings representing cards but shuffled.
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Returns a boolean on if a card is a member of the deck.
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Devides a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many cards should
    be in the hand.
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
    Takes in a deck and writes it to a file.
  """
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  @doc """
    Loads a deck based on a filename.
  """
  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File: #{filename} does not exists"
    end
  end

  @doc """
    Returns a dealed hand size that's been shuffled and delt.
  """
  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size)
  end
end
