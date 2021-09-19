defmodule Lasagna do
  @doc """
  Define the Lasagna.expected_minutes_in_oven/0 method that does not take
  any arguments and returns how many minutes the lasagna should be in the oven.
  According to the cooking book, the expected oven time in minutes is 40
  """
  def expected_minutes_in_oven do
    40
  end

  @doc """
  Define the Lasagna.remaining_minutes_in_oven/1 method that takes the actual
  minutes the lasagna has been in the oven as a argument and returns how many
  minutes the lasagna still has to remain in the oven, based on the expected oven
  time in minutes from the previous task.
  """
  def remaining_minutes_in_oven(minutes_in_hoven) do
    expected_minutes_in_oven() - minutes_in_hoven
  end

  @doc """
  Define the Lasagna.preparation_time_in_minutes/1 method that takes the number of
  layers you added to the lasagna as a argument and returns how many minutes you spent
  preparing the lasagna, assuming each layer takes you 2 minutes to prepare.
  """
  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * 2
  end

  @doc """
  Define the Lasagna.total_time_in_minutes/2 method that takes two arguments:
  the first argument is the number of layers you added to the lasagna,
  and the second argument is the number of minutes the lasagna has been in the oven.
  The function should return how many minutes in total you've worked on cooking the
  lasagna, which is the sum of the preparation time in minutes, and the time in minutes
  the lasagna has spent in the oven at the moment.
  """
  def total_time_in_minutes(number_of_layers, minutes_in_hoven) do
    preparation_time_in_minutes(number_of_layers) + minutes_in_hoven
  end

  @doc """
  Define the Lasagna.alarm/0 method that does not take any arguments and returns a
  message indicating that the lasagna is ready to eat.
  """
  def alarm do
    "Ding!"
  end
end
