pragma solidity 0.8.0;

import "./NaiveReceiverLenderPool.sol";
import "./FlashLoanReceiver.sol";

contract TestLoans {
    NaiveReceiverLenderPool lendpool;
    FlashLoanReceiver receiver;

    constructor() payable {
        lendpool = new NaiveReceiverLenderPool();
        receiver = new FlashLoanReceiver(payable(lendpool));
        (bool success, ) = address(lendpool).call{value: 1000 ether}("");
        (bool success2, ) = address(receiver).call{value: 10 ether}("");
    }

    function echidna_test() public returns (bool) {
        return address(receiver).balance >= 10 ether;
    }
}
