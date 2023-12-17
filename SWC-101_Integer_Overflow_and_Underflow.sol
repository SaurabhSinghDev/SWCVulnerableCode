// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            uint8 public number = 255;

            function increment() public {
                number += 1;  // This will cause an overflow
            }
        }