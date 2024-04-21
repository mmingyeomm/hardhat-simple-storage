// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{

    uint256 public favoriteNumber;
  
  
    mapping(string => uint256) public nametoFavoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber: 2, name: "hi"});
    People[] public people; 

    function store(uint256 a) public {
        favoriteNumber = a;
    }

    // view, pure 는 지혼자 쓸 때 가스 안씀 
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPeople(string memory _name, uint256 _favoriteNumber) public {

        people.push(People(_favoriteNumber, _name));
        nametoFavoriteNumber[_name] = _favoriteNumber;

    }

}
