configure :development do
    DataMapper.setup(:default, 'postgres://user:password@hostname/database')
  end
  
  configure :production do
    DataMapper.setup(:default, 'postgres://user:password@hostname/database')
  end