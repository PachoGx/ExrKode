defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.first()
  end

  def initial(name) do
    name
    |> String.upcase()
    |> String.first()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first, last] = String.split(full_name, " ")
    part1 = initial(first)
    part2 = initial(last)
    "#{part1} #{part2}"
  end

  def pair(full_name1, full_name2) do

    first = initials(full_name1)
    second = initials(full_name2)
    "❤-------------------❤\n|  #{first}  +  #{second}  |\n❤-------------------❤\n"
  end
end
