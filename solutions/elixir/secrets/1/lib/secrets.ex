defmodule Secrets do
  def secret_add(secret) do
    &(&1 + secret)
  end

  def secret_subtract(secret) do
    fn x -> x - secret end
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    fn divi -> div(divi, secret) end
  end

  def secret_and(secret) do
    fn an -> Bitwise.band(an, secret) end
  end

  def secret_xor(secret) do
    fn xo -> Bitwise.bxor(xo, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn combine -> result = secret_function1.(combine)
    secret_function2.(result) end
  end
end
