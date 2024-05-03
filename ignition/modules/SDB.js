const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("SDB", (m) => {
    const students = m.contract("StudentDatabase");

    return { students };
});