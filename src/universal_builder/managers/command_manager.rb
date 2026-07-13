# frozen_string_literal: true

module UniversalBuilder
  module Managers

    # CommandManager
    #
    # Responsable de registrar y ejecutar todos los comandos del sistema.
    #
    class CommandManager

      def initialize
        @commands = {}
      end

      # Registrar un comando
      #
      # name  -> Symbol
      # block -> Proc
      #
      def register(name, &block)
        raise ArgumentError, "Command '#{name}' already exists." if @commands.key?(name)

        @commands[name] = block
      end

      # Ejecutar un comando
      #
      def execute(name, *args)
        command = @commands[name]

        raise ArgumentError, "Unknown command '#{name}'." unless command

        command.call(*args)
      end

      # Verifica existencia
      #
      def registered?(name)
        @commands.key?(name)
      end

      # Eliminar comando
      #
      def unregister(name)
        @commands.delete(name)
      end

      # Limpiar todos
      #
      def clear
        @commands.clear
      end

      # Obtener lista
      #
      def commands
        @commands.keys.sort
      end

      # Total registrados
      #
      def count
        @commands.size
      end

    end

  end
end
# frozen_string_literal: true

module UniversalBuilder
  module Managers
    #
    # ExtensionManager
    #
    # Responsable del ciclo de vida de la extensión.
    #
    class ExtensionManager

      def initialize
        @loaded = false
      end

      def load
        return if @loaded

        @loaded = true
      end

      def unload
        @loaded = false
      end

      def loaded?
        @loaded
      end

      def version
        UniversalBuilder::Core::VERSION
      end

    end
  end
end
