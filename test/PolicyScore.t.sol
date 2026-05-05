// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(54, 104, 26, 25, 8);
        require(scorer.score(signal) == 56, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_2() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(60, 94, 10, 8, 4);
        require(scorer.score(signal) == 166, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(79, 79, 10, 10, 8);
        require(scorer.score(signal) == 205, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}
