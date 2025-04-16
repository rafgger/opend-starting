import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import "bootstrap/dist/css/bootstrap.min.css";
import homeImage from "../../assets/home-img.png";
import Item from "./Item";
import Minter from "./Minter";

function App() {

  const NFTID = "mxi2w-mirud-7hvs3-dvwpn-ssjti-df6qk-bt4l2-ywi3q-nfh5q-pisv6-jqe"; // dfx identity get-principal

  return (
    <div className="App">
      <Header />
      <Item />
      {/* <Minter /> */}
      {/* <Item id={NFTID} /> */}
      {/* <img className="bottom-space" src={homeImage} /> */}
      <Footer />
    </div>
  );
}

export default App;
