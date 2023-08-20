import { Transaction } from "./Transaction";
import * as crypto from "crypto"

export class Block
 {
  public nonce = Math.random() * 99999999999999

  constructor(
    public prevHash: string,
    public transaction: Transaction,
    public ts = Date.now()
  ) {
  }

  public get hash() : string {
    const str = JSON.stringify(this)
    const hash = crypto.createHash("SHA256")
    hash.update(str).end()
    return hash.digest("hex")
  }
}