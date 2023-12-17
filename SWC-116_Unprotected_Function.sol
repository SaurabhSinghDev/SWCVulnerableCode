// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            uint public data;

            function setData(uint _data) public {
                // Unprotected function
                data = _data;
            }
        }