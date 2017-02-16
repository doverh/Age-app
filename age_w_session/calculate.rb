def sum_favorite(num1,num2,num3)
	sum = num1.to_i+num2.to_i+num3.to_i
	return sum.to_s
end

def greater_than_age(sum,user_age)

	if sum > user_age
		result = "The sum of your favorite numbers is greater than your age"
	elsif sum == user_age
		result = "The sum of your favorite numbers is equal of your age"
	else 
		result = "The sum of your favorite numbers is less than your age"
	end
	return result
end