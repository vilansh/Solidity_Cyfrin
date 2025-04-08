// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    //+5
    //Override
    //Virtual Override
    function store(uint256 _newNumber) public override{
        myFavoriteNumber = _newNumber + 5;
    }
}