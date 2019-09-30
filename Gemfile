source "https://rubygems.org"

gem "godmin", git: "https://github.com/varvet/godmin"

# Specify your gem's dependencies in godmin-activestorage.gemspec
gemspec

# The dummy app loads whatever is specified in this gemfile, therefore
# we add the admin engine used by the dummy app here
gem "admin", path: "test/dummy/admin", group: %i[test development]
