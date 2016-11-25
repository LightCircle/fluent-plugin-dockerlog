module Fluent

  class TypecastOutput < Output
    Fluent::Plugin.register_output('typecast', self)

    # Define `log` method for v0.10.42 or earlier
    unless method_defined?(:log)
      define_method("log") { $log }
    end

    def initialize
      super
      # require 'hogepos'
      log.info "a"
    end

    def configure(conf)
      super
      log.info "b"
    end

    def start
      super
      log.info "c"
    end

    def shutdown
      super
      log.info "d"
    end
  end
end
