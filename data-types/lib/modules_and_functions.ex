defmodule AnalyticsReport do
  @moduledoc """
  A simple module for handling analytics reports.
  """

  @constant_value 50

  def generate_report(:user_engagement) do
    "User engagement report generated"
  end

  def generate_report(:sales) do
    "Sales report generated"
  end

  def generate_report(:traffic) do
    "Traffic report generated"
  end

  def generate_report do
    "Default report generated"
  end

  def short_generate_report, do: "Report generated shorthand"
end
