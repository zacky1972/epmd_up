defmodule EpmdUpTest do
  use ExUnit.Case
  doctest EpmdUp

  describe "active?" do
    test "completes without raising an exception" do
      r = EpmdUp.active?()
      assert r == true || r == false
    end
  end
end
