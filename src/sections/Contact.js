import React from "react";
import {DataContext} from "../AppData";
import Loading from "../components/Loading";

class Contact extends React.Component {
    static contextType = DataContext;

    url = "https://cms.chiatek.com/users/api";
    database = "spchiare_stevechiarelli";
    user = "1002";

    constructor() {
        super();
        this.state = {
            loading: false,
            iframe: false,
            first_name: "",
            last_name: "",
            email: "",
            subject: "",
            message: ""
        }
    }

    handleChange = (event) => {
        const {name, value} = event.target;
        this.setState({
            [name]: value
        })
    }

    handleSubmit = () => {
        this.setState({ loading: true }, () => {  
            setTimeout(() => {
               this.setState({ 
                   iframe: true,
                   loading: false 
                });
             }, 2000);
        });
    }

    render() {
        let data = this.context;
        let contact = [];

        if (data != null) {
            let section = data.filter(item => item.contact);
            contact = section[0].contact[0].fields;
        }

        return (
            <div className="contact-wrapper">
                <div className="wrapper">
                    <section id="contact">
                        <h2>{contact.title}</h2>
                        <div className="contact-content">
        
                            <p>{contact.content}<br /><br />{contact.email}</p>
        
                            <form action={this.url} target="iframe" method="post" onSubmit={this.handleSubmit}>
                                <div style={this.state.iframe === false ? {display: "block"} : {display: "none"}}>
                                    <div className="contact">
                                        <div className="form-group">
                                            <label htmlFor="first_name">first name</label><br />
                                            <input 
                                                type="text" 
                                                name="first_name" 
                                                placeholder="Your first name here..." 
                                                value={this.state.first_name}
                                                onChange={this.handleChange}
                                                required
                                            />
                                        </div>
                                        <div className="form-group">
                                            <label htmlFor="last_name">last name</label><br />
                                            <input 
                                                type="text" 
                                                name="last_name" 
                                                placeholder="Your last name here..."
                                                value={this.state.last_name}
                                                onChange={this.handleChange}
                                                required 
                                            />
                                        </div>
                                        <div className="form-group">
                                            <label htmlFor="email">email</label><br />
                                            <input 
                                                type="text" 
                                                name="email"
                                                placeholder="Your email here..." 
                                                value={this.state.email}
                                                onChange={this.handleChange}
                                                required
                                            />
                                        </div>
                                        <div className="form-group">
                                            <label htmlFor="subject">subject</label><br />
                                            <input 
                                                type="text" 
                                                name="subject" 
                                                placeholder="Subject here..."
                                                value={this.state.subject}
                                                onChange={this.handleChange}
                                                required 
                                            />
                                        </div>
                                        <div className="form-group">
                                            <label htmlFor="message">message</label><br />
                                            <textarea 
                                                name="message"
                                                id="message"
                                                value={this.state.message}
                                                onChange={this.handleChange}
                                                required
                                            />
                                        </div>

                                        <input type="hidden" name="database" value={this.database} />
                                        <input type="hidden" name="user" value={this.user} />
                                        <button className="btn-primary" type="submit">SUBMIT</button>
                                    </div>
                                </div>
                                {this.state.loading === true ? <Loading /> : null}
                                <div style={this.state.iframe === true ? {display: "block"} : {display: "none"}}>
                                    <iframe 
                                        className="iframe"
                                        title="iframe"
                                        name="iframe" 
                                        scrolling="no"
                                        src={this.url}>
                                    </iframe>
                                </div>
                            </form>
                        </div>
                    </section>
                </div>
            </div>
        );
    }
}

export default Contact;
