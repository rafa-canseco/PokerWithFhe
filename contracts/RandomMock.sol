// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@fhenixprotocol/contracts/FHE.sol";

// Start of Selection
library RandomMock {
    function getFakeRandom() internal returns (uint256) {
        uint blockNumber = block.number;
        uint256 blockHash = uint256(blockhash(blockNumber));

        return blockHash;
    }

    function getFakeRandomU8() public returns (euint8) {
        uint8 blockHash = uint8(getFakeRandom());
        return FHE.asEuint8(blockHash);
    }

    function getFakeRandomU16() public returns (euint16) {
        uint16 blockHash = uint16(getFakeRandom());
        return FHE.asEuint16(blockHash);
    }

    function getFakeRandomU32() public returns (euint32) {
        uint32 blockHash = uint32(getFakeRandom());
        return FHE.asEuint32(blockHash);
    }
}