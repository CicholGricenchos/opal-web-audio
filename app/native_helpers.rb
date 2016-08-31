module WebAudio
  module NativeHelpers
    def self.included(base)
      base.class_eval do
        def self.camel_reader name, options = {}
          alias_native underscore(name), name, options
        end

        def self.camel_writer name
          alias_native "#{underscore(name)}=", "#{name}="
        end

        def self.camel_accessor name, options = {}
          camel_reader name, options
          camel_writer name
        end

        def self.camel_alias name, options = {}
          alias_native underscore(name), name, options
        end

        def self.underscore name
          name.gsub(/([A-Z])/, '_\1').downcase
        end

      end
    end
  end
end