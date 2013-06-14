upcase_attributes
=================

module for apply upcase  to specific attributes in Rails models before the validations.

USE:

  require 'upcase_attributes'
  class Foo << ActiveRecord::Base

    include UpcaseAttributes

    attributes_for_upcase :name, :last_name

  end

  foo = Foo.new(attribute1: "armando", attribute2: "mendoza" )
  foo.save
  foo.name # => "ARMANDO"
  foo.last_name # => "MENDOZA"

TODO:
