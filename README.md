PCS Web Development Primer Course Site
=======================================

To recompile assets (`brew install less` if necessary):

```
lessc -x assets/less/main.less > assets/css/main.min.css
```

To generate and serve the site locally:
```
jekyll serve
```

To publish the site after changes have been made, commit your changes to the master branch, then delete and re-create the current GitHub Pages branch, then push all branches to GitHub:

```
gb -D gh-pages
gb gh-pages
git push -all origin
```  

