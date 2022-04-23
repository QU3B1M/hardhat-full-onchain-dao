// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract QBMGovToken is ERC20Votes, Ownable {
	uint256 public maxSupply = 1_000_000 ether;

	constructor() ERC20("QBMGovToken", "QGT") ERC20Permit("QBMGovToken") {
		_mint(msg.sender, maxSupply);
	}

    /// @notice This is to be sure that the function from ERC20Votes is called.
	function _afterTokenTransfer(
		address from,
		address to,
		uint256 amount
	) internal override(ERC20Votes) {
		super._afterTokenTransfer(from, to, amount);
	}

    /// @notice This is to be sure that the function from ERC20Votes is called.
	function _mint(address to, uint256 amount) internal override(ERC20Votes) {
		super._mint(to, amount);
	}

    /// @notice This is to be sure that the function from ERC20Votes is called.
	function _burn(address account, uint256 amount) internal override(ERC20Votes) {
		super._burn(account, amount);
	}
}
