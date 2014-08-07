Web Development Primer
=======================
### Portland Code School Course Site


Directory Structure
--------------------
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
│   ├── fonts/    # FontAwesome files (currently not being used, in favor of the CDN-hosted version.)
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

Updating Site Content
---------------------

To create a new post, issue `bundle exec rake new_post` and look for the generated markdown file in `_posts`. 

To create a new page, use `bundle exec rake new_page`. The generated markdown file will be saved to the project root.


Previewing Locally and Publishing to GitHub Pages
--------------------------------------------------

To preview the site locally, issue 
```
bundle exec rake preview
```

To publish it to GitHub Pages:
```
bundle exec rake publish
```

Both rake tasks will re-compile LESS assets and check for the correct site url in `_config.yml` (more on that below).


What the Rake tasks do
-----------------------

### `rake preview`

When previewing locally, Rake compiles assets with
```
lessc -x assets/less/main.less > assets/css/main.min.css
```

and generates and serves the site with
```
jekyll serve
```

### `rake publish` 

When publishing to GitHub pages, Rake compiles LESS as above, checks for a clean git status, and regenerates the site on a `gh-pages` branch before pushing all branches to remote `origin`:
```
git branch -D gh-pages  &&  git branch gh-pages  &&  git push --all origin
```

### Site URL Check
The following lines in `config.yml` must be swapped when switching between development and production environments. Rake will check to make sure the correct one for previewing / publishing is set and prompt you if you've forgotten to swap them out.

```
url:    http://portlandcodeschool.github.io/primer  # for production
# url:  http://0.0.0.0:4000                         # for local testing
```

