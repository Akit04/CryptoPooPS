import CryptoPoops from 0x05
import NonFungibleToken from 0x06
pub fun main(account :Address): [UInt64] {
let publicReference = getAccount(account).getCapability(/public/Collection)
            .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
            ??panic("This account dont have collection")
  return publicReference.getIDs()
}
