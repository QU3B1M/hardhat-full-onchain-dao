// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract QBM is Ownable {
    // TODO: Something more interesting here.
	
    uint256 private value;

	function store(uint256 _value) public {
		value = _value;
	}

	function retrieve() public view returns (uint256) {
		return value;
	}
}
