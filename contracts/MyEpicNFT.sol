// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract  MyEpicNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIDs;

  constructor() ERC721 ("SquareNFT", "SQUARE") {
    console.log('This is my Epic NFT contract');
  }

  function makeAnEpicNFT() public {
    uint256 newItemID = _tokenIDs.current();

    _safeMint(msg.sender, newItemID);

    _setTokenURI(newItemID, "data:application/json;base64,ewogICJuYW1lIjogIllvdSBDYW4gRG8gSXQiLAogICJkZXNjcmlwdGlvbiI6ICJZb3UgU2hvdWxkIEJlbGlldmUgWW91cnNlbGYiLAogICJpbWFnZSI6ICJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSEJ5WlhObGNuWmxRWE53WldOMFVtRjBhVzg5SW5oTmFXNVpUV2x1SUcxbFpYUWlJSFpwWlhkQ2IzZzlJakFnTUNBek5UQWdNelV3SWo0S0lDQWdJRHh6ZEhsc1pUNHVZbUZ6WlNCN0lHWnBiR3c2SUhkb2FYUmxPeUJtYjI1MExXWmhiV2xzZVRvZ2MyVnlhV1k3SUdadmJuUXRjMmw2WlRvZ01UaHdlRHNnZlR3dmMzUjViR1UrQ2lBZ0lDQThjbVZqZENCM2FXUjBhRDBpTVRBd0pTSWdhR1ZwWjJoMFBTSXhNREFsSWlCbWFXeHNQU0ppYkdGamF5SWdMejRLSUNBZ0lEeDBaWGgwSUhnOUlqVXdKU0lnZVQwaU5UQWxJaUJqYkdGemN6MGlZbUZ6WlNJZ1pHOXRhVzVoYm5RdFltRnpaV3hwYm1VOUltMXBaR1JzWlNJZ2RHVjRkQzFoYm1Ob2IzSTlJbTFwWkdSc1pTSStXVzkxSUVOaGJpQkVieUJKZENBaFBDOTBaWGgwUGdvOEwzTjJaejQ9Igp9");

    console.log("An NFT w/ ID %s has been minted to %s", newItemID, msg.sender);

    _tokenIDs.increment();
  }
}