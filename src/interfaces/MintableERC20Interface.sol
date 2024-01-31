pragma solidity ^0.8.24;

import "./ERC20Interface.sol";

/// @dev Mintable ERC20 Interface
abstract contract MintableERC20Interface is ERC20Interface {
    function mint(uint256 _value, address _to) virtual public returns (bool);
}
