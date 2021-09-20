defmodule FreelancerRates do
  @moduledoc """
  In this exercise you'll be writing code to help a freelancer communicate with a
  project manager by providing a few utilities to quickly calculate daily and monthly
  rates, optionally with a given discount.
  We first establish a few rules between the freelancer and the project manager:
  The daily rate is 8 times the hourly rate.
  A month has 22 billable days.

  The freelancer is offering to apply a discount if the project manager chooses to
  let the freelancer bill per month, which can come in handy if there is a certain
  budget the project manager has to work with.

  Discounts are modeled as fractional numbers representing percentage,
  for example 25.0 (25%).
  """
  @doc """
  calculates the daily rate given an hourly rate. The returned daily rate should be a float.
  """
  def daily_rate(hourly_rate) do
    hourly_rate * 8 / 1
  end

  @doc """
  calculates the price after a discount. The returned value should always be a float, not rounded in any way.
  """
  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  @doc """
  calculate the monthly rate, and apply a discount. The returned monthly rate should be
  rounded up (take the ceiling) to the nearest integer.
  """
  def monthly_rate(hourly_rate, discount) do
    monthly_rate_before_discount = hourly_rate * 22 * 8

    (monthly_rate_before_discount - monthly_rate_before_discount * discount / 100)
    |> Float.ceil(0)
    |> round()
  end

  @doc """
  takes a budget, a hourly rate, and a discount, and calculates how many days of work that covers
  """
  def days_in_budget(budget, hourly_rate, discount) do
    daily =
      hourly_rate
      |> daily_rate()
      |> apply_discount(discount)

    Float.floor(budget / daily, 1)
  end
end
