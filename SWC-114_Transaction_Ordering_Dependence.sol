// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            uint public price = 1 ether;

            function buy() public payable {
                require(msg.value == price);
                // Transaction ordering dependence
                price = 2 ether;
            }
        }