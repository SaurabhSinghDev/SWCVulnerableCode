// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function testAssert(uint _x) public pure {
                assert(_x > 0);  // Assert statement
            }
        }