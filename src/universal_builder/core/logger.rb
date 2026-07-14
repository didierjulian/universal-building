# frozen_string_literal: true

module UniversalBuilder
  module Core

    # Sistema básico de registro de mensajes del plugin.
    class Logger

      LEVELS = {
        debug: 0,
        info: 1,
        warn: 2,
        error: 3
      }.freeze

      class << self

        def debug(message)
          write(:debug, message)
        end

        def info(message)
          write(:info, message)
        end

        def warn(message)
          write(:warn, message)
        end

        def error(message)
          write(:error, message)
        end

        private

        def write(level, message)
          current = Config.get(:log_level)

          return if LEVELS[level] < LEVELS[current]

          puts "[#{level.to_s.upcase}] #{message}"
        end

      end

    end

  end
end