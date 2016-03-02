class Item < ActiveRecord::Base
  require 'action_view'
  include ActionView::Helpers::DateHelper
  belongs_to :user
end
