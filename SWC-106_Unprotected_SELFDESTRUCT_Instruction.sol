// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function kill() public {
                selfdestruct(payable(msg.sender));
            }
        }