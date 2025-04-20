// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // Solidity Version

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {

    uint256 public myFavoriteNumber;  //favoriteNumber sets to 0 by default if no value is set

    struct Person{
        uint256 favoriteNumber;
        string name; 
    }

    //Dynamic array
    Person[] public listOfPeople;

    //mapping similar to dictornary used to find number associated with name directly instead of going thru complete array
    mapping(string=>uint256) public nameToFavoriteNumber;

    // Person public Pat = Person(10, "Pat");
    // Person public Alina = Person({favoriteNumber:17, name : "Alina"});

    function store(uint256 _favoriteNumber) public virtual{
        myFavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
