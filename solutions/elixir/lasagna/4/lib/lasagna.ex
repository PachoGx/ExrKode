defmodule Lasagna do
  # Expected time
def  expected_minutes_in_oven() do
  40 
end
  # Remaining minutes
def remaining_minutes_in_oven(time_spent) do
  expected_minutes_in_oven() - time_spent
end
  # Prep time
def preparation_time_in_minutes(prep_layers) do
  2 * prep_layers
end
  # Total time
def total_time_in_minutes(layers, min) do
  preparation_time_in_minutes(layers) + min
end
  # Alarm
def alarm() do
  "Ding!"
end
end
