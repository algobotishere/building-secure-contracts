pragma solidity ^0.8.0;

import "./exercise3/mintable.sol";

/// @dev Run the template with
///      ```
///      solc-select use 0.8.0
///      echidna program-analysis/echidna/exercises/exercise3/template.sol --contract TestToken
///      ```
contract TestToken is MintableToken {
    address echidna = msg.sender;

    // TODO: update the constructor
    constructor() public MintableToken(totalMintable) {
        owner = echidna;
    }

    function echidna_test_balance() public returns (bool) {
        return balances[msg.sender] <= 10000;
    }
}
