defmodule ZenithMoveSearchFlow.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 52, slack: 34, drag: 20, confidence: 62}
    assert ZenithMoveSearchFlow.DomainReview.score(item) == 140
    assert ZenithMoveSearchFlow.DomainReview.lane(item) == "ship"
  end
end
