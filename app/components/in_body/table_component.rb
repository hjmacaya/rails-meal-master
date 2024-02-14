# frozen_string_literal: true

class InBody::TableComponent < ViewComponent::Base
  def initialize(data:)
    @data = data
    puts "Data from component:"
    @data.each do |d|
      puts d
    end
  end
end
