// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MyRealEstate is ERC1155 {
    constructor() ERC1155("TestURI"){
    }
    event NewTokenCreated(address _to, uint256 _id, uint256 _amount);

    function createToken(address _to, uint256 _id, uint256 _amount, bytes memory _data) public {
        _mint(_to, _id, _amount, _data);
        emit NewTokenCreated(_to, _id, _amount);
    }

}
