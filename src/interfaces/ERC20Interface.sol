pragma solidity ^0.8.24;

/// @dev ERC20 Interface
abstract contract ERC20Interface {
    uint256 public totalSupply;

    function balanceOf(address who) virtual public view returns (uint256);

    function transfer(address to, uint256 value) virtual public returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);

    function allowance(
        address owner,
        address spender
    ) virtual public view returns (uint256);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) virtual public returns (bool);

    function approve(address spender, uint256 value) virtual public returns (bool);

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

