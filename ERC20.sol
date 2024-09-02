
contract ERC20 {

  uint256 public totalSupply;
  mapping(address => uint256) public balances;
  string  public name =  "Homomorphic Encryption";
  string  public symbol =  "FHE";
  uint8  public decimals =  18;

  function transferFrom(address sender, address recipient, uint256 amount) {
    allowance[sender][msg.sender] -= amount;
    balanceOf[sender] -= amount;
    balanceOf[recipient] += amount;
  }

  function mint(uint256 amount) external {
    balanceOf[msg.sender] += amount;
    totalSupply += amount;
  }

  function burn(uint256 amount) external {
    balanceOf[msg.sender] -= amount;
    totalSupply -= amount;
  }
} 