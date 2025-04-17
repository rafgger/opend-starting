import Debug "mo:base/Debug";
import Principal "mo:base/Principal";

actor class NFT (name: Text, owner: Principal, content: [Nat8]) = this { // this represents the entire actor class
    // Debug.print(debug_show ("NFT contract started"));

//     // Debug.print(debug_show ("NFT contract started"));

    let  itemName =  name;
    let nftOwner = owner;
    let imageBytes = content;

    public query func getName() : async Text{
        return itemName; 
    };

    public query func getOwner() : async Principal{
        return nftOwner; 
    };

    public query func getAsset() : async [Nat8]{
        return imageBytes; 
    };  

    public query func getCanisterId() : async Principal {
        return Principal.fromActor(this);
    };


};