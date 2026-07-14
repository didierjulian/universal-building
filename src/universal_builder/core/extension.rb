# frozen_string_literal: true

module UniversalBuilder
  module Core

    # Punto de entrada del plugin dentro de SketchUp.
    class Extension

      class << self

        def start

          Logger.info("===================================")
          Logger.info("#{PLUGIN_NAME} #{VERSION}")
          Logger.info("Inicializando extensión...")
          Logger.info("===================================")

          Loader.load!

          Logger.info("Extensión iniciada correctamente.")

        rescue StandardError => error

          Logger.error("Error al iniciar la extensión:")
          Logger.error(error.message)
          Logger.error(error.backtrace.join("\n"))

        end

      end

    end

  end
end