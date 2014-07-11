require "rubygems"
require "bundler/setup"
require "stringex"

## -- Config -- ##

posts_dir       = "_posts"    # directory for blog files
new_post_ext    = "md"  # default new post file extension when using the new_post task
new_page_ext    = "md"  # default new page file extension when using the new_page task


#############################
# Create a new Post or Page #
#############################

# usage: bundle exec rake new_post
desc "Create a new post in #{posts_dir}"
task :new_post, :title do |t, args|
  if args.title
    title = args.title
  else
    title = get_stdin("Enter a title for your post: ")
  end
  filename = "#{posts_dir}/#{Time.now.strftime('%Y-%m-%d')}-#{title.to_url}.#{new_post_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  category = get_stdin("Enter category name to group your post in (leave blank for none): ")
  tags = get_stdin("Enter tags to classify your post (comma separated): ")
  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
    post.puts "modified: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
    post.puts "category: [#{category}]"
    post.puts "tags: [#{tags}]"
    post.puts "image:"
    post.puts "  feature: "
    post.puts "  credit: "
    post.puts "  creditlink: "
    post.puts "comments: "
    post.puts "share: "
    post.puts "---"
  end
end

# usage: bundle exec rake new_page
desc "Create a new page"
task :new_page, :title do |t, args|
  if args.title
    title = args.title
  else
    title = get_stdin("Enter a title for your page: ")
  end
  filename = "#{title.to_url}.#{new_page_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  tags = get_stdin("Enter tags to classify your page (comma separated): ")
  puts "Creating new page: #{filename}"
  open(filename, 'w') do |page|
    page.puts "---"
    page.puts "layout: page"
    page.puts "permalink: /#{title.to_url}/"
    page.puts "title: \"#{title}\""
    page.puts "modified: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
    page.puts "tags: [#{tags}]"
    page.puts "image:"
    page.puts "  feature: "
    page.puts "  credit: "
    page.puts "  creditlink: "
    page.puts "share: "
    page.puts "---"
  end
end

# usage: bundle exec rake publish
desc "Publish site to GitHub Pages"
task :publish do
  if all_changes_committed? and successful_asset_compilation?
    puts "Pushing master branch to GitHub and Publishing site to GitHub Pages..."
    system 'git branch -D gh-pages && git branch gh-pages && git push --all origin'
  end
end

# usage: bundle exec rake preview
desc "Generate and preview site locally"
task :preview do
  if successful_asset_compilation?
    jekyllPid = Process.spawn("jekyll serve")
    trap("INT") {
      [jekyllPid].each { |pid| Process.kill(9, pid) rescue Errno::ESRCH }
      exit 0
    }
    [jekyllPid].each { |pid| Process.wait(pid) }
  end
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end

def successful_asset_compilation?
  compile = 'lessc -x assets/less/main.less > assets/css/main.min.css'
  success = "Succesfully compiled LESS to ./assets/css/main.min.css"
  failure = "Compilation of LESS files failed. See lessc output for more info."

  puts "Compiling LESS..."
  errors = `#{compile}`

  puts errors.empty? ? success : failure
  errors.empty?
end

def all_changes_committed?
  unstaged_changes = `git status` =~ /Changes not staged for commit/
  commit_reminder  = "Commit your changes before creating the GitHub Pages branch."

  puts commit_reminder if unstaged_changes
  unstaged_changes.nil?
end

def less_not_installed?
  `brew list | grep less`.empty?
rescue ArgumentError => e
  puts 'Error occurred checking for less compiler. Ensure Homebrew is installed.'
  true
end
