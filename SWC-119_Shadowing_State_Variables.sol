// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            uint public data = 10;

            function shadowingFunction() public {
                uint data = 20;
                // Shadowing state variable 'data'
            }
        }