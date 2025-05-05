// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Ownership Manager Contract
/// @author [Your Name]
/// @notice This contract manages the ownership of an address and allows ownership transfer by the current owner
/// @dev The contract sets the deployer as the initial owner and allows ownership to be updated via `SetOwner`

contract OwnershipManager {
    /// @notice The current owner of the contract
    address public Owner;

    /// @notice The last address that was assigned as the new owner
    address public newOwner;

    /// @notice Emitted when the ownership is transferred
    /// @param newOwner The address of the new owner
    /// @param Owner The address of the previous owner
    event OwnershipTransferred(address indexed newOwner, address indexed Owner);

    /// @notice Initializes the contract and sets the deployer as the owner
    constructor() {
        Owner = msg.sender;
    }

    /// @notice Allows the current owner to transfer ownership to a new address
    /// @dev Only callable by the current owner
    /// @param _newOwner The address to be set as the new owner
    function SetOwner(address _newOwner) public {
        require(msg.sender == Owner, "Only owner can change ownership;");
        emit OwnershipTransferred(_newOwner, Owner);
        newOwner = _newOwner;
        Owner = newOwner;
    }

    /// @notice Checks if the caller is the current owner
    /// @return True if the caller is the owner, otherwise false
    function IsOwner() public view returns (bool) {
        return msg.sender == Owner;
    }
}
