function _transfer(address from, address to, euint64 amount) internal {
  balances[to] = TFHE.add(balances[to], amount);
  balances[from] = TFHE.sub(balances[from], amount);
}