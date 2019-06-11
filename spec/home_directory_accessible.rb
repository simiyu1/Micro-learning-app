require "custom_helper"
require 'database_cleaner'

def app
  ApplicationController
  UsersController
end

describe ApplicationController do
  it "responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Welcome to Micro-Learning!")
  end
end

describe UsersController do
  it "responds with a register message" do
    get '/signup'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Join Micro-learning")
  end
end

describe UsersController do
  it "responds with a sign-in message" do
    get '/signin'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Sign-In to Micro-learning app")
  end
end