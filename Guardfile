require 'sprockets'

guard 'haml', :output => 'public' do
  watch(/^.+(\.html\.haml)/)
end

guard 'sprockets', {
    :minify      => true,
    :destination => 'public/assets',
    :asset_paths => [
      'javascripts',
      # Zurb could definitely use some ruby love
      Pathname.new(Gem::Specification.find_by_name('zurb-foundation').gem_dir).join('js'),
    ]
  } do
  ignore(/^javascripts\/_(.*)\.(js|coffee)/)
  watch(/^javascripts\/(.*)\.(js|coffee)/)
end

guard 'compass' do
  watch(/^sass\/(.*)\.s[ac]ss/)
end
