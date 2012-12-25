# encoding: utf-8
module Lakala

  #@client=Lakala::Client.new(params)
  class Client
    include ClassUtilMixin

    #私有方法
    protected
    attr_accessor :merid, :mincode, :minpswd

    public
    #类变量
    @@defaults = {
      #版本号
      :ver => "20060301",
      #失效时间(分钟)
      :expiredtime => 1440,
      #快捷账单号支付url
      :pay_url => "http://www.paygate.cn/MerchantPlugin3/BillNoGenServlet",
      #单笔查询url
      :query_url => "http://pgs.lakala.com.cn/tradeSearch/ndsinglesearch"
    }

    #类变量
    @@config = Lakala::Config.new(@@defaults)

    #类方法
    #可通过Lakala::Client.configure do |conf|;conf.ver='';end 的方式调用,改变默认值@@config通过@@defaults获得的默认值
    class << self
      def configure(&block)
        raise ArgumentError, "Block must be provided to configure" unless block_given?
        yield @@config
      end
    end # class << self




  end#Client class

end
