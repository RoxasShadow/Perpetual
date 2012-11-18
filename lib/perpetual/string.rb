#--
# This file is part of Perpetual.
#
# Copyright(C) 2012 Giovanni Capuano <webmaster@giovannicapuano.net>
#
# Perpetual is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Perpetual is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with Perpetual.  If not, see <http://www.gnu.org/licenses/>.
#++
class String
  
  # Returns the character at the +position+.
  def at(position)
    self[position, 1].to_s
  end

  # Returns true if the string contains only whitespaces or is empty.
  def blank?
    self !~ %r![^\s#{[0x3000].pack("U")}]!
  end
  
  # Truncates the string after a given length if text is longer than length.
  def cut(limit)
    self.match(%r{^(.{0,#{limit}})})[1]
  end
  alias_method :truncate, :cut
  
  # Returns the first character of the string or the first +limit+ characters.
  def first(limit = 1)
    if limit == 0
      ''
    elsif limit >= self.length
      self
    else
      self[0...limit]
    end
  end
  
  # Returns the remaining of the string from the +position+.
  def from(position)
    self[position, -1].to_s
  end
  
  # Returns the last character of the string or the last +limit+ characters.
  def last(limit = 1)
    if limit == 0
      ''
    elsif limit >= self.length
      self
    else
      self[(-limit)..-1]
    end
  end
  
  # Returns true if the string is a valid integer.
  def numeric?
    self.to_i.to_s == self || self.to_f.to_s == self
  end
  
  # Removes from the string all the HTML(-like) tags.
  def strip_html_tags
    self.gsub(/<("[^"]*"|'[^']*'|[^'">])*>/, '')
  end
  alias_method :strip_tags, :strip_html_tags
  
  def strip_html_tags!
    self.gsub!(/<("[^"]*"|'[^']*'|[^'">])*>/, '')
  end
  alias_method :strip_tags!, :strip_html_tags!
  
  # Capitalizes all the single words in the string.
  def titlecase
    self.gsub(/\b('?[a-z])/) { $1.capitalize }
  end
  alias_method :titleize, :titlecase
  
  def titlecase!
    self.gsub!(/\b('?[a-z])/) { $1.capitalize }
  end
  alias_method :titleize!, :titlecase!
  
  # Returns the beginning of the string up to the +position+
  def to(position)
    self[0..position].to_s
  end
  
end