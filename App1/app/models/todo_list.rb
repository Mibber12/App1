class TodoList < ActiveRecord::Base
  before_save :truncate_title
  before_save :set_title_to_empty #hier zit een bug die we oplossen

  validates_presence_of :description

  def truncate_title
    self[:title] = self[:title][0..255] if self[:title]
  end

  def set_title_to_empty
    self[:title] = '' unless self[:title]
  end
end

# 
