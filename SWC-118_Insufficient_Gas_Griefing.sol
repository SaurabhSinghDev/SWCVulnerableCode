// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function griefableFunction() external {
                // Could run out of gas, causing griefing
                for (uint i = 0; i < 1000000; i++) {
                    // Expensive operations
                }
            }
        }