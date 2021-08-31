import React from "react";
import {useContext} from "react";
import {DataContext} from "../AppData";
import WorkItem from "../components/WorkItem";

function Work() {
    const data = useContext(DataContext);
    const items = [];
    let featured = [];
    let notFeatured = [];
    let row = 0;
    let index = 0;

    if (data != null) {
        let section = data.filter(item => item.work);
        let work = section[0].work;

        work.sort(function(a,b) {
            return new Date(b.fields.date) - new Date(a.fields.date);
        });

        featured = work.filter(item => item.fields.featured === 1);
        notFeatured = work.filter(item => item.fields.featured === 0);

        for (let i=0; i < notFeatured.length; i++) {  
            if (i === 0) {
                items.push(
                    <div className="featured-container" key={featured[index].primary_key}>
                        <WorkItem fields={featured[index].fields} featured={true} />
                    </div>
                )
                row = 0;
                index++;
            }

            if (notFeatured[i+1] !== undefined) {
                items.push(
                    <div className="work-container" key={notFeatured[i].primary_key}>
                        <WorkItem fields={notFeatured[i].fields} featured={false} />
                        <WorkItem fields={notFeatured[i+1].fields} featured={false} />
                    </div>
                )
                row = 2;
                i++;
            }
            else {
                items.push(
                    <div className="work-container" key={notFeatured[i].primary_key}>
                        <WorkItem fields={notFeatured[i].fields} featured={false} />
                    </div>
                )
                row++;
            }


            if (row === 2 && index < featured.length) {
                items.push(
                    <div className={index % 2 === 1 ? "featured-container reverse" : "featured-container"} key={featured[index].primary_key}>
                        <WorkItem fields={featured[index].fields} featured={false} />
                    </div>
                )
                row = 0;
                index++;
            }
        }
    }

    return (
        <div className="wrapper">
            <section id="work">
                <h3>My Work</h3>
                {items}
            </section>
        </div>
    );
}

export default Work;