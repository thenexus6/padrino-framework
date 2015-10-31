##
# This file loads certain extensions required by Padrino from ActiveSupport.
#
require 'active_support/core_ext/hash/keys'                 # symbolize_keys
require 'active_support/core_ext/hash/slice'                # slice

require 'padrino-support/core_ext/string/inflections'
require 'padrino-support/core_ext/string/colorize'
require 'padrino-support/core_ext/object_space'
require 'padrino-support/file_set'
require 'padrino-support/utils'


##
# Loads our locale configuration files
#
if defined?(I18n) && !defined?(PADRINO_I18N_LOCALE)
  PADRINO_I18N_LOCALE = true
  I18n.load_path += Dir["#{File.dirname(__FILE__)}/padrino-support/locale/*.yml"]
end

##
# Make sure we can always use the class name
# In reloader for accessing class_name Foo._orig_klass_name
#
class Module
  alias :_orig_klass_name :name
end
