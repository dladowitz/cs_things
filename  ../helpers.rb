require 'active_support/inflector'

module MyHelpers
  def pluralize(number, text)
    return text.pluralize if number != 1
    text
  end
end
