// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function withdraw() public {
                payable(msg.sender).transfer(address(this).balance);
            }
        }