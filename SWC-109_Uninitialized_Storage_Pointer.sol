// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            struct Data { uint x; }
            Data[] public dataArray;

            function addData(uint _x) public {
                Data storage newData;  // Uninitialized storage pointer
                newData.x = _x;
                dataArray.push(newData);
            }
        }