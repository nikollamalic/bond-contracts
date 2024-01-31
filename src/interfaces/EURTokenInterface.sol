pragma solidity ^0.4.24;

import "./MintableERC20Interface.sol";
import "./ClaimableTokensInterface.sol";

/// @dev EUR Token Interface
contract EURTokenInterface is MintableERC20Interface, ClaimableTokensInterface {
    function burn(uint256 _value, address _from) public returns (bool);
    function enableTransfers(bool _transfersEnabled) public;
}





