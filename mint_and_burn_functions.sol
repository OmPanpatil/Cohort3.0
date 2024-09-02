function mint(euint64 mintedAmount) public onlyOwner {
  balances[owner()] = TFHE.add(balances[owner()], mintedAmount);
  totalSupply = TFHE.add(totalSupply, mintedAmount);
}


function burn(euint64 burnedAmount) public onlyOwner {
  balances[owner()] = TFHE.sub(balances[owner()], burnedAmount);
  totalSupply = TFHE.sub(totalSupply, burnedAmount);
}