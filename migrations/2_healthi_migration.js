const healthi = artifacts.require("healthi");

module.exports = function (deployer) {
  deployer.deploy(healthi);
};
