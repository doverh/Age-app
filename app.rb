require 'sinatra'
require_relative 'calculate.rb'
enable session

get '/' do
	
	erb:name

end

post '/get_name' do
 	 user_name = params['user_name']
 	 erb:age, :locals => {:user_name=>user_name}
end

post '/get_age' do
 	 user_age = params['user_age']
 	 user_name = params['user_name']
 	 erb:favorite_numbers, :locals => {:user_age=>user_age,:user_name=>user_name}
end

post '/get_favorites' do
 	 user_age = params['user_age']
 	 user_name = params['user_name']
 	 backend_name = params[user_age]
 	  num1 = params['num1']
 	  num2 = params['num2']
 	  num3 = params['num3']
 	  sum = sum_favorite(num1,num2,num3)
 	  result = greater_than_age(sum,user_age)
 	 erb:results, :locals => {:user_age=>user_age,:user_name=>user_name, :result=>result,:sum=>sum }
#session[]
end




	

