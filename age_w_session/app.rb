require 'sinatra'
require_relative 'calculate.rb'

enable :sessions

get '/' do
	
	erb:name

end

post '/get_name' do
 	 session[:user_name] = params['user_name']
 	 erb:age, :locals => {:user_name=>session[:user_name]}
end

post '/get_age' do
 	 session[:user_age] = params['user_age']
 	 erb:favorite_numbers, :locals => {:user_age=>session[:user_age], :user_name=>session[:user_name]}
end

post '/get_favorites' do
 	   num1 = params['num1']
 	   num2 = params['num2']
 	   num3 = params['num3']
 	   session[:sum] = sum_favorite(num1,num2,num3)
 	   session[:result] = greater_than_age(session[:sum],session[:user_age])
 	 erb:results, :locals => {:user_age=>session[:user_age], :user_name=>session[:user_name], :result=>session[:result],:sum=>session[:sum]}
#session[]
end




	

