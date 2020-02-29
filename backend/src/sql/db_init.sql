CREATE DATABASE IF NOT EXISTS website;

USE website;

INSERT IGNORE portfolio_hero (id, name, surname, hero_image, hero_profession, hero_description, resume_label, trademarks) VALUES (1, 'Gavriș', 'Raul', 'https://raw.githubusercontent.com/gavrisraul/dotfiles/master/.wallpapers/raul.png', 'Software Developer', 'Hello, my name is Raul Gavriș. I am a Software Developer and this is my website. Go checkout my <a href="/portfolio">portfolio</a> or <a href="/blog">blog</a> posts to know more about me! If you want something done in code, <a href="/contact">contact me!</href>', 'Resume', 'Raul Gavris © 2020');

INSERT INTO portfolio_links (id, url, label) VALUES (1, '/about', 'About');
INSERT INTO portfolio_links (id, url, label) VALUES (2, '/blog', 'Blog');
INSERT INTO portfolio_links (id, url, label) VALUES (3, '/portfolio', 'Portfolio');
INSERT INTO portfolio_links (id, url, label) VALUES (4, '/contact', 'Contact');
INSERT INTO portfolio_links (id, url, label) VALUES (5, '/destroy', 'Destroy');
INSERT INTO portfolio_links (id, url, label) VALUES (6, 'https://github.com/gavrisraul', 'github');
INSERT INTO portfolio_links (id, url, label) VALUES (7, 'https://www.linkedin.com/in/gavris-raul-b0796a125', 'linkedin');
INSERT INTO portfolio_links (id, url, label) VALUES (8, 'https://www.facebook.com/rg.raulgavris', 'facebook');
INSERT INTO portfolio_links (id, url, label) VALUES (9, 'https://www.instagram.com/raul_gavris/', 'instagram');
INSERT INTO portfolio_links (id, url, label) VALUES (10, 'https://www.youtube.com/channel/UC8zs6y6zyId75_EYzAjgRjA', 'youtube');
INSERT INTO portfolio_links (id, url, label) VALUES (11, 'https://docs.google.com/document/d/1cCAD423vpQx2Nx8Bg0oH_kSVi3r2WCmfH6QfNee4EDM', 'resume');

INSERT INTO portfolio_post (id, title, text, image, date) VALUES (1, 'Blog Post 1 - Hello World!', '----
# First Blog Post
## Hello world!

My name is Raul Gavriș, I live in Romania, Cluj-Napoca. I am software developer and a student at UBB Faculty of Mathematics and Computer Science(2021 expected graduation) and here I am, writing my first blog post.  



```cpp
#include <iostream>
using namespace std;

int main(void) {
    cout << "Hello world!";
    return 0;
}
```

This was my first ever program I wrote back in 6th grade of school.  

After my introduction to programming using the pseudocode I went to C/C++.  


Then I saw what the power of the computer is.

First of all, I would like to say that I love to code and to see how the code I write slowly transforms into an application that can help with the automation of tasks or simply to code just for fun.  


I would like for this blog to post things that I am learning or have learned and to share my experience with you.  

Here it begins my path of becoming a software engineer.  

### Some of the topics I would like to post are:  
-> How I set up my Arch Linux with i3, tmux, vim(neovim).  
-> How I created this website with react, django, mysql and docker.  
-> Algorithms and Data structures I am studying.', 'https://raw.githubusercontent.com/gavrisraul/website-portfolio/master/frontend/website-ui/public/blog-post-image.png', '2020-2-29');

INSERT INTO portfolio_post (id, title, text, image, date) VALUES (2, 'Blog Post 2 - TBA', '# TBA  
----', 'https://raw.githubusercontent.com/gavrisraul/website-portfolio/master/frontend/website-ui/public/blog-post-image.png', '2020-3-10'); 