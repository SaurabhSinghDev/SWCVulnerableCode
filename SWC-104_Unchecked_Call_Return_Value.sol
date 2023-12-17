// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function transfer(address payable recipient, uint amount) public {
                recipient.call{value: amount}("");  // Unchecked return value
            }
        }