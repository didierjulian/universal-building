# frozen_string_literal: true

module UniversalBuilder
  module Core

    # Responsable de cargar todos los componentes del plugin.
    class Loader

      class << self

        def load!

          load_core
          load_managers
          load_services
          load_tools
          load_ui
          load_utils

          Logger.info("Universal Builder cargado correctamente.")

        end

        private

        def load_core
          Logger.debug("Cargando Core...")
        end

        def load_managers
          Logger.debug("Cargando Managers...")
        end

        def load_services
          Logger.debug("Cargando Services...")
        end

        def load_tools
          Logger.debug("Cargando Tools...")
        end

        def load_ui
          Logger.debug("Cargando UI...")
        end

        def load_utils
          Logger.debug("Cargando Utils...")
        end

      end

    end

  end
end
¿Qué hace es