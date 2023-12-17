// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            address[] public largeArray;

            function addAddress(address _newAddress) public {
                // This could cause a DoS attack by reaching the block gas limit
                largeArray.push(_newAddress);
            }
        }