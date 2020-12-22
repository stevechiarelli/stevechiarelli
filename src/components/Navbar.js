import React from "react";
import ScrollTo from "./ScrollTo";

class Navbar extends React.Component {
    constructor() {
        super();
        this.state = {
            resumeURL: "https://www.stevechiarelli.com/resume.pdf"
        }
    }

    handleClick = (event) => {
        let section = document.querySelector(event.target.name);
        ScrollTo(section, 1250, 80);
    };

    render() {
        return (
            <div className="navbar">
                <div className="wrapper">
                    <header>
                        <span className="logo">Steve Chiarelli</span>
                        <nav>
                            <ul className="nav-links">
                                <li><button name="#about" onClick={this.handleClick}>About</button></li>
                                <li><button name="#work" onClick={this.handleClick}>My Work</button></li>
                                <li><button name="#contact" onClick={this.handleClick}>Hire Me</button></li>
                            </ul>
                        </nav>
                    </header>
                </div>
            </div>
        );
    }
}

export default Navbar;