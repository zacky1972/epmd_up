defmodule EpmdUpTest do
  use ExUnit.Case
  doctest EpmdUp

  describe "active?" do
    test "completes without raising an exception" do
      r = EpmdUp.active?()
      assert r == true || r == false
    end
  end

  describe "find_epmd_executable" do
    test "succeeds always" do
      refute EpmdUp.find_epmd_executable() == nil
    end
  end

  describe "activate, deactivate and active?" do
    test "activate, deactivate and active?" do
      assert EpmdUp.activate() == :ok
      assert EpmdUp.active?()
      assert EpmdUp.deactivate() == :ok
      refute EpmdUp.active?()
      assert EpmdUp.activate() == :ok
      assert EpmdUp.active?()
    end
  end
end
