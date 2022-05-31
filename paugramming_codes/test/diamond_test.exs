defmodule DiamondTest do
  use ExUnit.Case
  alias Diamond

  test "should print a diamond" do
    assert "    *\n   ***\n  *****\n *******\n*********\n *******\n  *****\n   ***\n    *\n     \n" ==
             Diamond.call(5)
  end
end
