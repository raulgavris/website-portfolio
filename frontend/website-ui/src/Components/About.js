import React from 'react';
import { Link } from 'react-router-dom';


class About extends React.Component {
    state = {

    }

    render() {
        return (
            <div>
                <nav>
                    <div className="nav_links">
                        <div className="link_nav"><Link to="/">Home</Link></div>
                        <div className="link_nav"><Link to="/blog">Blog</Link></div>
                        <div className="link_nav"><Link to="/portfolio">Potrfolio</Link></div>
                        <div className="link_nav"><Link to="/contact">Contact</Link></div>
                    </div>
                </nav>
                <img height="400px" alt="hero" src="https://raw.githubusercontent.com/gavrisraul/dotfiles/master/.wallpapers/aaa.png" />
                <h2>Hello, my name is Raul Gavriș. I'm a software developer.</h2>
                <h2>I have studied computer science for a really long period of time. And I can say that this is my passion.</h2>
                <h2>Currently working at <a href="https://devnest.ro">Devnest</a> as a perl developer.</h2>
                <h2>Previously <a href="https://spyhce.com/">Spyhce</a> as a python developer.</h2>
                <Link to="/contact"><h2>Give me a shout if you want something done in code!</h2></Link>
            </div>
        );
    };
}

export default About;
