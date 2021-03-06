import React from 'react';
import { Link } from 'react-router-dom';

import './NavigationBar.scss';


class NavigationBar extends React.Component {
    state = {
        homeActive: window.location.href.includes('/') ? true : false,
        aboutActive: window.location.href.includes('/about') ? true : false,
        portfolioActive: window.location.href.includes('/portfolio') ? true : false,
        blogActive: window.location.href.includes('/blog') ? true : false,
        contactActive: window.location.href.includes('/contact') ? true : false,
    }

    render() {
        return (
            <nav className="nav-bar">
                <Link to="/"><div className="link-nav inactive"><div className="text-nav">Home</div></div></Link>
                <Link to="/about"><div className={ this.state.aboutActive ? "link-nav active" : "link-nav inactive" }><div className="text-nav">About</div></div></Link>
                <Link to="/blog"><div className={ this.state.blogActive ? "link-nav active" : "link-nav inactive" }><div className="text-nav">Blog</div></div></Link>
                <Link to="/portfolio"><div className={ this.state.portfolioActive ? "link-nav active" : "link-nav inactive" }><div className="text-nav">Portfolio</div></div></Link>
                <Link to="/contact"><div className={ this.state.contactActive ? "link-nav active" : "link-nav inactive" } ><div className="text-nav">Contact</div></div></Link>
            </nav>
        );
    };
}

export default NavigationBar;
