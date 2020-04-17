require_relative "../config/environment.rb"
require 'active_support/inflector'
require_relative '../spec/spec_helper'
require 'interactive_record.rb'

class Student < InteractiveRecord
    
    self.column_names.each do |attr|
        attr_accessor attr.to_sym
    end
end
