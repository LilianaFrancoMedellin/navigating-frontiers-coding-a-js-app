import fs from "fs";

const writeTxtFile = (fileName, content) => {
  fs.writeFile(fileName, JSON.stringify(content), (error) => {
    if (error) console.log("Error - file could not be created");
    console.log(`${fileName} file created`);
  });
};

const readTxtFile = (fileName, onRead) => {
  fs.readFile(fileName, "utf-8", (error, data) => {
    if (error) console.log("Error - file could not be read");
    onRead(data);
  });
};

export { writeTxtFile, readTxtFile };
