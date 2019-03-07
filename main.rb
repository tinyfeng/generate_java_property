Rails.logger.level = 5
class TmpClass < ActiveRecord::Base
  self.table_name = ENV['table_name']
end
puts(TmpClass.columns_hash.map{|k, v| "\nprivate #{v.type.to_s.capitalize} " + k.camelize(:lower) + ";" }.join '')
puts(TmpClass.new.attributes.keys.join ', ')
puts(TmpClass.first(5).map{|i| i.attributes.values.map{|v| v || 'null'}.join ', '}.join "\n")
