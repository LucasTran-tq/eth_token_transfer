require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/Bd2AgqCI604CsU5Iw2vfF5yWSldOJUrY",
      accounts: [
        "bce9ae1511608813a07c2ee3ec25facd27e7f50dc92b14109bed8707993eaf6c",
      ],
    },
  },
};
