class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true

  before_destroy :check_for_bookmarks

  private

  def check_for_bookmarks
    if bookmarks.any?
      errors.add(:base, "Cannot delete a movie that is referenced in bookmarks")
      throw :abort
    end
  end
end
