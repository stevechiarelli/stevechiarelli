import React from "react";
import {DataProvider} from "./AppData";
import Header from "./sections/Header";
import About from "./sections/About";
import Work from "./sections/Work";
import Contact from "./sections/Contact";
import Footer from "./sections/Footer";
import "./assets/css/main.css";

function App() {
    return (
        <DataProvider>
            <Header />
            <About />
            <Work />
            <Contact />
            <Footer />
        </DataProvider>
    );
}

export default App;