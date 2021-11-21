import { readFileSync } from 'fs';

export function reading(fileName: string) {
  const file = readFileSync(fileName);
  console.log(file.toString());
}
