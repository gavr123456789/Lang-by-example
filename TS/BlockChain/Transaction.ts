import * as crypto from "crypto"


export class Transaction
 {
  constructor(
    public amount: number,
    public payer: string, // public key
    public payee: string // public key
    ) {
    
  }

  toString(){
    return JSON.stringify(this, undefined, 2)
  }
}