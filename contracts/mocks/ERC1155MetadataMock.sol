pragma solidity ^0.6.8;
pragma experimental ABIEncoderV2;

import "../tokens/ERC1155/ERC1155Metadata.sol";


contract ERC1155MetadataMock is ERC1155Metadata {

  /***********************************|
  |         Base URI Functions        |
  |__________________________________*/

  /**
   * @notice Will update the base URL of token's URI
   * @param _newBaseMetadataURI New base URL of token's URI
   */
  function setBaseMetadataURI(string memory _newBaseMetadataURI) public {
    super._setBaseMetadataURI(_newBaseMetadataURI);
  }


  /***********************************|
  |         Log URI Functions         |
  |__________________________________*/

  /**
   * @notice Will emit default URI log event for corresponding token _id
   * @param _tokenIDs Array of IDs of tokens to log default URI
   */
  function logURIsMock(uint256[] memory _tokenIDs) public {
    super._logURIs(_tokenIDs);
  }


  /***********************************|
  |       Unsupported Functions       |
  |__________________________________*/

  fallback () external {
    revert('ERC1155MetadataMock: INVALID_METHOD');
  }
}