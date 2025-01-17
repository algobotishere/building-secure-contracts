pragma solidity ^0.8.0;

import "./exercise1/token.sol";

/// @dev Run the template with
///      ```
///      solc-select use 0.8.0
///      echidna program-analysis/echidna/exercises/exercise1/template.sol
///      ```
contract TestToken is Token {
    address echidna = tx.origin;

    constructor() public {
        balances[echidna] = 10000;
    }

    function echidna_test_balance() public view returns (bool) {
        return balances[msg.sender] <= 10_000;
    }
}
