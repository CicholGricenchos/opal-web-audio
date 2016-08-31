if RUBY_ENGINE == 'opal'
  require 'opal/web-audio/interfaces'
else
  require 'opal'
  Opal.append_path File.expand_path('../..', __FILE__).untaint
end