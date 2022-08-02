import { Chain } from "./Chain";
import { Wallet } from "./Wallet";

const gavr = new Wallet()
const misha = new Wallet()
const policanin = new Wallet()

gavr.sendChiribasi(50, misha.publicKey)
misha.sendChiribasi(23, policanin.publicKey)
policanin.sendChiribasi(3, gavr.publicKey)

console.log(JSON.stringify(Chain.instance, undefined, 2));
