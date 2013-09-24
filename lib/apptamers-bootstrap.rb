module Apptamers
  module Bootstrap
    require 'apptamers/bootstrap/engine' if defined?(Rails)
  end
end

require 'apptamers/bootstrap' if defined?(Rails)