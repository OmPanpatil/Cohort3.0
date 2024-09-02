function balanceOf(
  bytes32 publicKey,
  bytes calldata signature
) public view virtual onlySignedPublicKey(publicKey, signature) returns (bytes memory) {
  return TFHE.reencrypt(balances[msg.sender], publicKey, 0);
}