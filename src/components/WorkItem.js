import React from "react";

function WorkItem(props) {
    const { title, image, description, built_with, button1_text, button1_url, button2_text, button2_url } = props.fields;
    
    return (   
        <div className="item">
            <img src={image} alt={title} />
            <div className="card">
                {props.featured ? <h5>featured project</h5> : ""}
                <h3>{title}</h3>
                <p><span>description: </span>{description}</p>
                <p><span>built with: </span>{built_with}</p>
                <div className="button-container">
                    <a href={button1_url} target="_blank" rel="noreferrer" className={button1_text !== "" ? "btn-primary" : "hidden"}>{button1_text}</a>
                    <a href={button2_url} target="_blank" rel="noreferrer" className={button2_text !== "" ? "btn-primary" : "hidden"}>{button2_text}</a>
                </div>
            </div> 
        </div>
    );
}

export default WorkItem;