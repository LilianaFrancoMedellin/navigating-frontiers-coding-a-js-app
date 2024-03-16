import psList from "ps-list";
import { writeTxtFile } from "./utils.js";

const getMaxUsageProcess = async () => {
  const processList = await psList();
  const formattedAndSortedProccessList = processList
    .map((process) => {
      return {
        pid: process.pid,
        name: process.name,
        cpu: process.cpu,
      };
    })
    .sort((processA, processB) => {
      return processB.cpu - processA.cpu;
    });

  return formattedAndSortedProccessList[0];
};

getMaxUsageProcess().then((maxUsageProcess) =>
  writeTxtFile("maxUsageInfo.txt", maxUsageProcess)
);
