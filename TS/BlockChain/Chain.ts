import { Transaction } from "./Transaction"
import { Block } from "./Block"
import * as crypto from "crypto"

export class Chain {
  public static instance = new Chain()

  chain: Block[] = [new Block("", new Transaction(100, "genesis", "satoshi"))]

  
  public get lastBlock() : Block {
    return this.chain.at(-1)!
  }

  mine(nonce: number) {
    let solution = 1
    console.log("mining...")

    while(true) {

      const hash = crypto.createHash('MD5');
      hash.update((nonce + solution).toString()).end();

      const attempt = hash.digest('hex');

      if(attempt.substring(0,4) === '0000'){
        console.log(`Solved: ${solution}`);
        return solution;
      }

      solution += 1;
    }
 
  }
  
  addBlock(transaction: Transaction, senderPubKey: string, signature: Buffer){
    const verifier = crypto.createVerify("SHA256")
    verifier.update(transaction.toString())

    const isValid = verifier.verify(senderPubKey, signature)
    
    if(isValid){
      const newBlock = new Block(this.lastBlock.hash, transaction)
      this.mine(newBlock.nonce)
      this.chain.push(newBlock)

    }
  }
}