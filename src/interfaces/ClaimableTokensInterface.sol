pragma solidity ^0.8.24;

/// @dev Interface which defines the ability of contract to claim mistakenly sent ERC20 tokens or Ether
abstract contract ClaimableTokensInterface {
    function claimTokens(address _token) virtual public;
}
