// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function oldFunction() public {
                // Using deprecated functions like throw
                throw;
            }
        }