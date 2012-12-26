# encoding: utf-8
module Lakala

  #单笔查询返回的结果
  class Query
    include ClassUtilMixin

    #connection:查询拉卡拉是否成功; result:查询结果状态; order_id:订单编号; amount:金额
    attr_accessor :connection,:result,:order_id,:amount

  end

end
