import React from "react";
import {useContext} from "react";
import {DataContext} from "../AppData";

function About() {
    const data = useContext(DataContext);
    let about = [];
    
    if (data != null) {
        let section = data.filter(item => item.about);
        about = section[0].about[0].fields;
    }

    return (
        <div className="about-wrapper">
            <div className="wrapper">
                <section id="about">
                    <h2>{about.heading}</h2>
                    <p dangerouslySetInnerHTML={{ __html: about.content }} />
                </section>
            </div>
        </div>
    );
}

export default About;