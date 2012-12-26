# Lakala - an API for lakala(拉卡拉)

## Installaion

Just include it in your project's `Gemfile` with Bundler:
```
  gem 'lakala', :git => 'git://github.com/helloqidi/lakala.git'
```
then, run bundle:
```
  $ bundle install
```

## Usage

*1,require
```
  require 'lakala'
```

*2,you can modify config
```
  Lakala::Client.configure do |conf|
    conf.ver="20060301",
    conf.expiredtime=1440,
    pay_url="http://www.paygate.cn/MerchantPlugin3/BillNoGenServlet"
    query_url="http://pgs.lakala.com.cn/tradeSearch/ndsinglesearch"
  end
```

*3,get pay url of lakala when use '快捷帐号单'
```
  @client=Lakala::Client.new({:merid=>"",:mincode=>"",:minpswd=>""})
  @lakala_pay_url=@client.redirect_to_lakala_gateway({
    :productname => "product name", 
    :desc => "product desc", 
    :amount => 100, 
    :orderid => "your order id", 
    :merurl=> "your website's url when lakala pay success"
    })
  p @lakala_pay_url
```

*4,get query result when use '单笔查询'
```
  @client=Lakala::Client.new({:merid=>"",:mincode=>"",:minpswd=>""})
  @lakala_query_result=@client.http_get_single_query_string({
    :order_id=>"your order id",
    :order_date=>Time.now.strftime("%Y%m%d")
  })
  p @lakala_query_result.connection
  p @lakala_query_result.result
  p @lakala_query_result.order_id
  p @lakala_query_result.amount
```
