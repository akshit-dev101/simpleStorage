// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage{
    uint256 myFavoriteNumber;
    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;

    }
    // Person public pat=Person({favoriteNumber:7,name:"Pat"});
    mapping(string => uint256) public nameToFavoriteNumber;

    Person[] public listOfPeople; //[]
    function store(uint _favoriteNumber) public virtual {
            myFavoriteNumber=_favoriteNumber;

    }
    function retrive() public view returns(uint256){
        return myFavoriteNumber;
    }
function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber,_name));
    nameToFavoriteNumber[_name]=_favoriteNumber;
}

}