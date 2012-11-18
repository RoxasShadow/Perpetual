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
module Enumerable
  
  # Returns true if the enumerable has more than 1 element.
  # Can be called with a block too, much like any?, so <tt>people.many? { |p| p.age > 26 }</tt> returns true if more than one person is over 26.
  def many?
    cnt = 0
    if block_given?
      any? do |element|
        cnt += 1 if yield element
        cnt > 1
      end
    else
      any?{ (cnt += 1) > 1 }
    end
  end
  
  # Returns the sum of the elements of the enumerable.
  def sum
    inject(:+)
  end
  
  # Returns the subtraction of the elements of the enumerable.
  def subtract
    inject(:-)
  end
  
  # Returns the multiplication of the elements of the enumerable.
  def multiply
    inject(:*)
  end
  
  # Returns the division of the elements of the enumerable.
  def divide
    inject(:/)
  end

end