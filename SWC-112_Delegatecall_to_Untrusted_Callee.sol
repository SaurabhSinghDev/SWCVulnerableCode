// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function delegatecallUntrusted(address _target, bytes memory _data) public {
                // Using delegatecall to an untrusted address
                (bool success, ) = _target.delegatecall(_data);
                require(success);
            }
        }