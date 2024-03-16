import os from "os";
import { readTxtFile, writeTxtFile } from "./utils.js";

const getSystemInfo = () => {
  const userInfo = os.userInfo();
  const totalMemory = os.totalmem();
  const freeMemory = os.freemem();
  const cpuInfo = os.cpus();

  return {
    userName: userInfo.username,
    totalRAM: `${(totalMemory / 1024 ** 3).toFixed(2)} GB`,
    freeRAM: `${(freeMemory / 1024 ** 3).toFixed(2)} GB`,
    cpuModel: cpuInfo[0].model,
  };
};

const systemInfo = getSystemInfo();

writeTxtFile("systemInfo.txt", systemInfo);

readTxtFile("systemInfo.txt", (data) => {
  const formattedData = JSON.parse(data);
  console.log(`Usuario: ${formattedData.userName}`);
  console.log(`RAM Total: ${formattedData.totalRAM}`);
  console.log(`RAM Available: ${formattedData.freeRAM}`);
  console.log(`Modelo de CPU: ${formattedData.cpuModel}`);
});
