defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      legacy? and level in [0, 5] ->
        :unknown

      level == 0 ->
        :trace

      level == 1 ->
        :debug

      level == 2 ->
        :info

      level == 3 ->
        :warning

      level == 4 ->
        :error

      level == 5 ->
        :fatal

      true ->
        :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      legacy? and LogLevel.to_label(level, legacy?) == :unknown ->
        :dev1

      LogLevel.to_label(level, legacy?) in [:error, :fatal] ->
        :ops

      not legacy? and LogLevel.to_label(level, legacy?) == :unknown ->
        :dev2

      true ->
        false
    end
  end
end
