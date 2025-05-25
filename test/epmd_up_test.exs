defmodule EpmdUpTest do
  use ExUnit.Case
  doctest EpmdUp

  describe "is_active?" do
    test "completes without raising an exception" do
      r = EpmdUp.is_active?()
      assert r == true || r == false
    end
  end
end
