require 'sprockets'

guard 'haml', :output => 'public' do
  watch(/^.+(\.html\.haml)/)
end

guard 'sprockets', {
    :destination => 'public/assets',
    :asset_paths => [
      'javascripts',
      # Zurb could definitely use some ruby love
      Pathname.new(Gem::Specification.find_by_name('zurb-foundation').gem_dir).join('js'),
    ],
    :root_file => 'application.js'
  } do
  watch(/^javascripts\/(.*)\.(js|coffee)/)
end

guard 'compass' do
  watch(/^sass\/(.*)\.s[ac]ss/)
end
