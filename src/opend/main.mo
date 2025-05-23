import Cycles "mo:base/ExperimentalCycles";
import Debug "mo:base/Debug";
import Principal "mo:base/Principal";
import NFTActorClass "../NFT/nft";

actor OpenD {

    public shared(msg) func mint(imgData: [Nat8], name: Text) : async Principal {
        let owner : Principal = msg.caller;

        // Debug.print(debug_show (Cycles.getBalance()));
        // Cycles.add(100_500_000_000);
        let newNFT = await NFTActorClass.NFT(name, owner, imgData);
        let newNFTPrincipal = await newNFT.getCanisterId();
        // Debug.print(debug_show (Cycles.getBalance()));

        return newNFTPrincipal;

    }
 
};
