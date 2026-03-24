defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  defp dis_count(discount) do
    ((100-discount) / 100)
  end
  
  def apply_discount(before_discount, discount) do
    before_discount * dis_count(discount)
  end

  def monthly_rate(hourly_rate, discount) do
    month = daily_rate(hourly_rate) * 22
    value = month * dis_count(discount)
    trunc(Float.ceil(value))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / daily_rate(hourly_rate * dis_count(discount)), 1) 
  end
end
