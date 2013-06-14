module UpcaseAttributes
  extend ActiveSupport::Concern

  included do
    class_attribute :_attributes_to_upcase
    self.before_validation :upcase_attributes
  end


  module ClassMethods
    def attributes_to_upcase(*arg)
      self._attributes_to_upcase = *arg
    end
  end

  protected

  def upcase_attributes
    if self._attributes_to_upcase.present?
      self._attributes_to_upcase.each do |attrb|
        if self[attrb].present?
          self[attrb] = self[attrb].upcase if self[attrb].respond_to?(:upcase)
        end
      end
    end
  end
end