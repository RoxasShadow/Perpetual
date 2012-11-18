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
module Crypt

  # Returns the SHA1 hash of one or more strings that will be joined.
  def self.sha1(*s)
    require 'digest/sha1'
    Digest::SHA1.hexdigest s.join
  end

  # Returns the MD5 hash of one or more strings that will be joined.
  def self.md5(*s)
    require 'digest/md5'
    Digest::MD5.hexdigest s.join
  end

  # Returns the base64 encoded hash of one or more strings that will be joined.
  def self.base64_encode(*s)
    require 'base64'
    Base64.encode64 s.join
  end

  # Returns the base64 decoded string of one or more hashes that will be joined.
  def self.base64_decode(*h)
    require 'base64'
    Base64.decode64 h.join
  end
  
  class << self
    alias_method :to_sha1, :sha1
    alias_method :to_md5, :md5
    alias_method :to_base64, :base64_encode
  end
  
end

class String

  # Returns the SHA1 hash of the string.
  def sha1
    Crypt::sha1 self
  end
  alias_method :to_sha1, :sha1
  
  # Returns the MD5 hash of the string.
  def md5
    Crypt::md5 self
  end
  alias_method :to_md5, :md5
  
  # Returns the base64 encoded hash of the string.
  def base64_encode
    Crypt::base64_encode self
  end
  alias_method :to_base64, :base64_encode
  alias_method :base64, :base64_encode
  
  # Returns the base64 decoded string of the hash.
  def base64_decode
    Crypt::base64_decode self
  end
  
end