import { writeFileSync } from "fs";

export function writing(fileName: string, content: string) {
  writeFileSync(fileName, content)
}