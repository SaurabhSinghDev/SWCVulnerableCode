// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            address public owner;

            constructor() {
                owner = msg.sender;
            }

            function changeOwner(address _newOwner) public {
                require(tx.origin == owner);
                owner = _newOwner;
            }
        }