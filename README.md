Web Development Primer
=======================
### Portland Code School Course Site

## Directory Structure

```
.
├── Gemfile
├── Gemfile.lock
├── Gruntfile.js
├── README.md
├── Rakefile.rb
├── _config.yml   # site configuration
├── _includes     # html partials
├── _layouts      # html layouts
├── _posts        # blog posts (course lessons go here)
├── _site         # generated site files
├── assets
│   ├── css/      # generated css 
│   ├── fonts/    # FontAwesome files (currently unused. FA is loaded from CDN)
│   ├── js/
│   └── less/
│       ...
│       ├── pcs-custom.less   # (most) customizations are here
│       ...
├── course.md     # course curriculum page
├── favicon.png   
├── feed.xml
├── images/
├── index.md      # landing page
├── resources.md  # resources page
└── sitemap.xml
```

## Updating Site Content

To create a new post, issue `rake new_post` and look for the generated markdown file in `_posts`. 

To create a new page, use `rake new_page`. The generated markdown file will be saved to the project root.

## Updating Styling 
To recompile assets (`brew install less` if necessary):

```
lessc -x assets/less/main.less > assets/css/main.min.css
```

To generate and preview the site locally:
```
jekyll serve
```

## Publishing 
To publish the site after changes have been made, commit your changes to the master branch, then delete and re-create the current GitHub Pages branch, then push all branches to GitHub:

```
git branch -D gh-pages  &&  git branch gh-pages  &&  git push -all origin
```

NB: Commenting on the following lines in `config.yml` must be swapped when switching from development to production environments:

```
url:    http://portlandcodeschool.github.io/primer  # production
# url:  http://0.0.0.0:4000                         # for local testing
```

