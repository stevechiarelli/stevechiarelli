import React from "react";
import {DataContext} from "../AppData";
import Loading from "./Loading";
import ScrollTo from "./ScrollTo";

class Hero extends React.Component {
    static contextType = DataContext;

    handleClick = (event) => {
        let section = document.querySelector(event.target.name);
        ScrollTo(section, 1250, 80);
    };

    render() {
        let data = this.context;

        if (data != null) {
            let section = data.filter(item => item.hero);
            let hero = section[0].hero[0].fields;

            return (
                <div className="wrapper">
                    <div className="hero-content">
                        <h1 dangerouslySetInnerHTML={{ __html: hero.heading }} />
                        <h4>{hero.subheading}</h4>
                        <button className="btn-primary" name="#work" onClick={this.handleClick}>SEE MY WORK</button>
                    </div>
                </div>
            );
        }

        return <Loading />
    }
}

export default Hero;