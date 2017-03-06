configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'unicode',
    database: 'littlebits',
    pool: 2, username: 'postgres',
    password: 'postgres'
  }
end

configure :production do
  set :database, {
    adapter: 'postgresql',
    encoding: 'unicode',
    database: 'littlebits',
    pool: 2, username: 'postgres',
    password: 'postgres'
  }
end
