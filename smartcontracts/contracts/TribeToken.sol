// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;	
	
	import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
	
	contract TribeToken is ERC20 {
	constructor() public ERC20("Tribe Token", "TribeNetworkToken") {
	_mint(msg.sender, 1000000000000000000000000);
	}
	}
