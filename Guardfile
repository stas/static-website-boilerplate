require 'sprockets'
require 'uglifier'

env = Sprockets::Environment.new
env.js_compressor = ::Uglifier.new
env.append_path 'javascripts'
env.append_path 'stylesheets'
env.append_path Pathname.new(
  Gem::Specification.find_by_name('bourbon').gem_dir).join(
    'app', 'assets', 'stylesheets')

guard 'haml', :output => 'public' do
  watch(/^.+(\.html\.haml)/)
end

guard 'sprockets2',
  :digest => false, :clean => false, :gz => false, :sprockets => env do
  watch(%r{^javascripts/.+$})
  watch(%r{^stylesheets/.+$})
end
