defmodule FreelancerRatesTest do
  use ExUnit.Case

  test "calculate the daily rate given an hourly rate" do
    assert FreelancerRates.daily_rate(60) === 480.0
  end

  test "calculates the price after a discount" do
    assert FreelancerRates.apply_discount(150, 10) === 135.0
  end

  test "calculates the monthly rate, and apply a discount" do
    assert FreelancerRates.monthly_rate(77, 10.5) === 12_130
    assert FreelancerRates.monthly_rate(62.8, 0.0) === 11_053
    assert FreelancerRates.monthly_rate(65.2, 0.0) == 11_476
  end

  test "given a budget, a hourly rate, and a discount, and calculates how many days of work that covers" do
    assert FreelancerRates.days_in_budget(20000, 80, 11.0) === 35.1
    assert FreelancerRates.days_in_budget(4410, 55, 0.0) == 10.0
    assert FreelancerRates.days_in_budget(4480, 55, 0.0) == 10.1
  end
end
