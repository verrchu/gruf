defmodule GrufTest do
  use ExUnit.Case
  use PropCheck

  property "always works" do
    forall type <- term() do
      boolean(type)
    end
  end

  def boolean(_), do: true
end
