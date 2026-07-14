# frozen_string_literal: true

module UniversalBuilder
  module Core

    class Config

      DEFAULTS = {
        plugin_name: "Universal Builder",
        language: "es",
        debug: true,
        autosave: true,
        log_level: :info
      }.freeze

      @settings = DEFAULTS.dup

      class << self

        def get(key)
          @settings[key]
        end

        def set(key, value)
          @settings[key] = value
        end

        def all
          @settings.dup
        end

        def reset!
          @settings = DEFAULTS.dup
        end

        def debug?
          @settings[:debug]
        end

      end

    end

  end
end