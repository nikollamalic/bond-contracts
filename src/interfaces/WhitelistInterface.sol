pragma solidity ^0.8.24;

/// @dev Whitelist Interface
abstract contract WhitelistInterface {
    function isWhitelisted(address _address) virtual public view returns (bool);
}
