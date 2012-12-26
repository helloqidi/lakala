# encoding: utf-8
module Lakala

  class Config
    include ClassUtilMixin
    #类常量
    @@ATTRIBUTES = [
      #版本号
      :ver,
      #失效时间(分钟)
      :expiredtime,
      #快捷账单号支付url
      :pay_url,
      #单笔查询url
      :query_url
    ]
   
    #方法
    attr_accessor *@@ATTRIBUTES

  end#Config class

end
