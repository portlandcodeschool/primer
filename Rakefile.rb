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
  if all_changes_committed? and successful_asset_compilation? and production_url_set?
    puts "Pushing master branch to GitHub and Publishing site to GitHub Pages..."
    system 'git branch -D gh-pages && git branch gh-pages && git push --all origin'
  end
end

# usage: bundle exec rake preview
desc "Generate and preview site locally"
task :preview do
  if successful_asset_compilation? and development_url_set?
    jekyllPid = Process.spawn("jekyll serve -w")
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

  raise LoadError unless less_compiler_installed?
  puts "Compiling LESS..."
  errors = `#{compile}`

  puts errors.empty? ? success : failure
  errors.empty?
rescue LoadError => e
  puts "#{e}: LESS compiler is not installed. Install via Homebrew or npm and try again."
  false
end

def clean_git_status?
  not (`git status` =~ /nothing to commit, working directory clean/).nil?
end

def all_changes_committed?
  puts "Commit your changes and try again." unless clean_git_status?
  clean_git_status?
end

def less_compiler_installed?
  (`which lessc` =~ /no lessc/).nil?
end

def production_url_set?
  config_file = File.read('_config.yml')
  commented_public_url  = config_file =~ /^#\s+url:\s+https:\/\/.*portlandcodeschool/
  uncommented_localhost = config_file =~ /^url:\s+http:\/\/0\.0\.0\.0\:4000/
  prod_url_set = commented_public_url.nil? && uncommented_localhost.nil?
  puts "Production URL is not set." unless prod_url_set
  prod_url_set
end

def development_url_set?
  localhost_url_set = !production_url_set?
  puts "Development URL is not set. Check _config.yml." unless localhost_url_set
  localhost_url_set
end
