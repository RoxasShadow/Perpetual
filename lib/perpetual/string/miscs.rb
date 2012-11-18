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
module Perpetual; module String
  module Miscs
  
    # Generates an alphanumeric pseudo-random string of length +length+ (default: +10+).
    def self.random(length = 10)
      dictionary        = (?a..?z).to_a + (?A..?Z).to_a + (?0..?9).to_a
      dictionary_length = dictionary.length
      ''.tap { |v|
        1.upto(length) {
          v << dictionary[rand(dictionary_length-1)]
        }
      }
    end
    
  end
end; end