module Resque
  module Plugins
    module Benchmark
      def after_enqueue_with_benchmarking(*args)
        RESQUE_LOGGER.info "Job: #{self}, Args: #{args.inspect}"
      end
    end
  end
end
