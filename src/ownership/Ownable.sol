pragma solidity ^0.8.24;

/// @dev Ownable
contract Ownable {
    // Owner address
    address public owner;

    /// @notice Constructor to initiate a Ownable contract
    constructor() {
        owner = msg.sender;
    }

    /// @notice Checks if msg.sender is owner
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    /// @notice Gives possibility to change the owner
    /// @param _newOwner address representing new owner
    function transferOwnership(address _newOwner) public onlyOwner {
        require(_newOwner != address(0));
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );
}

