class AgeValidator < ActiveModel::EachValidator
  @@default_options = {}

  def self.minimum_age(options = {})
    options = default_options.merge(options)

    options[:minimum] || 18
  end

  def self.valid?(value, options = {})
    (Date.new(1900)..Time.now.years_ago(minimum_age(options)).to_date).cover? value
  end

  def self.default_options
    @@default_options
  end

  def validate_each(record, attribute, value)
    options = @@default_options.merge(self.options)

    unless self.class.valid?(value, self.options)
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end