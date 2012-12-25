# encoding: utf-8
module Lakala

  class Config
    include ClassUtilMixin
    #类常量
    @@ATTRIBUTES = [
      :ver,
      :expiredtime,
      :pay_url,
      :query_url
    ]
   
    #方法
    attr_accessor *@@ATTRIBUTES

  end#Config class

end
