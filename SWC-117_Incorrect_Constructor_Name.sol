// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            uint public data;

            // Incorrectly named constructor
            function Vulnerable(uint _data) public {
                data = _data;
            }
        }