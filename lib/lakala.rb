# encoding: utf-8

#载入相对路径的文件
def require_local(suffix)
  require(File.expand_path(File.join(File.dirname(__FILE__), suffix)))
end

require 'digest/md5'
require 'uri'
require 'net/http'
require 'cgi'

require_local('lakala/version')
require_local('lakala/lakala')
require_local('lakala/core')
require_local('lakala/config')
require_local('lakala/client')
require_local('lakala/query')
