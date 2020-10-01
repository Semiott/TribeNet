const TribeDAO = artifacts.require("TribeDAO");

module.exports = function(deployer) {
  deployer.deploy(TribeDAO);
};