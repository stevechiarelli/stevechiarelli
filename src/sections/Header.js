import React from "react";
import Navbar from "../components/Navbar";
import Hero from "../components/Hero";

function Header() {
    return (
        <div className="hero-wrapper">
            <Navbar />
            <Hero />
            <div className="triangle-down"></div>
        </div>
    );
}

export default Header;