#Here are some additional tests to consider!!

  test "should score reds" do
    assert Game.score_reds(answer(), [1, 2, 3, 6]) == 3
    assert Game.score_reds(answer(), [5, 5, 6, 6]) == 0
  end

  test "should score whites" do
    assert Game.score_whites(answer(), [4, 1, 6, 2]) == 3
    assert Game.score_whites(answer(), [4, 1, 3, 2]) == 3
    assert Game.score_whites(answer(), [1, 2, 3, 4]) == 0
    assert Game.score_whites(answer(), [5, 6, 5, 6]) == 0
  end

  test "won't accept too many numbers in guess" do
    assert Game.score_whites(answer(), [4, 1, 6, 2, 5, 3])
    assert Game.score_whites(answer(), [3, 2, 1, 1, 5])
    assert Game.score_whites(answer(), [1, 2, 3, 4, 1, 2, 4])
    assert Game.score_whites(answer(), [5, 6, 5, 6, 3, 5, 2, 2])
  end

  test "won't accept too few numbers in guess" do
    assert Game.score_whites(answer(), [6, 2])
    assert Game.score_whites(answer(), [2, 3, 2])
    assert Game.score_whites(answer(), [1])
    assert Game.score_whites(answer(), [5, 6])
  end

  test "won't accept illeal/incorrect entries" do
    assert Game.score_whites(answer(), [89, 23])
    assert Game.score_whites(answer(), ["asd", 23, 7])
    assert Game.score_whites(answer(), [8, 9, 10, 7])
  end
