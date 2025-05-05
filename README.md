# OwnershipManager Smart Contract

## Overview

The `OwnershipManager` smart contract allows a single owner to manage ownership of the contract. Ownership can be transferred to a new address by the current owner. This is useful for access control scenarios where only a designated address should be allowed to perform certain operations.

## Features

- Initializes the contract with the deployer as the default owner.
- Allows the current owner to transfer ownership to a new address.
- Emits an event when ownership is successfully transferred.
- Provides a public function to check if the caller is the current owner.

## Contract Structure

### State Variables

- `Owner`: The current owner of the contract.
- `newOwner`: The most recently set new owner.

### Events

- `OwnershipTransferred(address newOwner, address OldOwner)`: Emitted when ownership changes.

### Functions

- `constructor()`: Sets the initial owner to the account that deployed the contract.
- `SetOwner(address _newOwner)`: Allows the current owner to set a new owner.
- `IsOwner()`: Returns `true` if the caller is the current owner.

## Use Case

This contract is a simple template for managing restricted access or role-based permissions in smart contracts by tracking who the current owner is and allowing ownership to be changed securely.

## License

This project is licensed under the MIT License.
