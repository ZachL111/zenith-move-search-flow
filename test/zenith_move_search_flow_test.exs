defmodule ZenithMoveSearchFlowTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 66, capacity: 96, latency: 9, risk: 22, weight: 10}
    assert ZenithMoveSearchFlow.score(signal_case_1) == 132
    assert ZenithMoveSearchFlow.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 100, capacity: 73, latency: 15, risk: 25, weight: 8}
    assert ZenithMoveSearchFlow.score(signal_case_2) == 128
    assert ZenithMoveSearchFlow.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 106, capacity: 89, latency: 17, risk: 25, weight: 5}
    assert ZenithMoveSearchFlow.score(signal_case_3) == 133
    assert ZenithMoveSearchFlow.classify(signal_case_3) == "review"
  end
end
