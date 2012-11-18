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
class Fixnum
  
  # Returns the English word for the number or a empty string if the number is not known. Supports number from 0-10.
  def in_word
    [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten' ][self] || ''
  end
  alias_method :in_words, :in_word
  
  # Defines the methods +n?+ where n is each number from 0-10. Returns true if the number is itself in English.
  (1..10).each { |n|
   define_method "#{(n).in_word}?" do
      self == n
   end
  }

  # Calculates the factorial of the number.
  def factorial
    self.one? ? 1 : self * (self - 1).factorial
  end
  
end