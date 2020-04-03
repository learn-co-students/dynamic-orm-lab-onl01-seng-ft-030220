require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'pry'

class InteractiveRecord
  def self.table_name
    self.to_s.downcase.pluralize
  end

  def self.column_names
    sql = "PRAGMA table_info(#{self.table_name})"
    columns = DB[:conn].execute(sql)
    column_names = columns.map {|column| column['name']}.compact
  end

  def initialize(props={})
    props.each do |prop, value|
      self.send("#{prop}=", value) 
    end
  end

  def save
    sql = <<-SQL
    INSERT INTO #{self.table_name_for_insert} (#{self.col_names_for_insert}) 
    VALUES (#{self.values_for_insert})
    SQL
    DB[:conn].execute(sql)
    self.id = DB[:conn].execute("SELECT last_insert_rowid() FROM #{self.table_name_for_insert}")[0][0]
  end

  def table_name_for_insert
    self.class.table_name
  end

  def col_names_list
    self.class.column_names.delete_if {|name| name == 'id'}
  end

  def col_names_for_insert
    self.col_names_list.join(', ')
  end

  def values_for_insert
    values = self.col_names_list.map do |name|
      "'#{self.send(name)}'"
    end.join(', ')
  end

  def self.find_by_name(name)
    sql = "SELECT * FROM #{self.table_name} WHERE name = ?"
    DB[:conn].execute(sql, name)
  end

  def self.find_by(props)
    expressions = props.map do |col, value|
      "#{col} = '#{value}'"
    end.join(' AND ')

    sql = "SELECT * FROM #{self.table_name} WHERE #{expressions}"
    DB[:conn].execute(sql)
  end
end