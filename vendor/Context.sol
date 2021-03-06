// SPDX-License-Identifier: MIT

/*
 * This file is part of the Autumn aVault Smart Contract
 *
 * The source is from OpenZeppelin
 * (https://github.com/autumn-finance/openzeppelin-contracts/blob/release-v3.4/contracts/utils/Context.sol)
 *
 * Applied Changes:
 *  - None
 */

pragma solidity ^0.7.3;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}