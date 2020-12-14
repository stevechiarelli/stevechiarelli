import React from "react";
import {useContext} from "react";
import {DataContext} from "../AppData";
import Loading from "./Loading";

function Hero() {
    const data = useContext(DataContext);

    if (data != null) {
        let section = data.filter(item => item.hero);
        let hero = section[0].hero[0].fields;

        return (
            <div className="wrapper">
                <div className="hero-content">
                    <h1 dangerouslySetInnerHTML={{ __html: hero.heading }} />
                    <h4>{hero.subheading}</h4>
                </div>
            </div>
        );
    }

    return <Loading />
}

export default Hero;