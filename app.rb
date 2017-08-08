require 'sinatra'
require 'rubygems'

get '/' do 

	erb :index
end

get '/change' do
	age = params[:age]
	name = params[:input_name]
	favnum1 = params[:num1].to_i
	favnum2 = params[:num2].to_i
	favnum3 = params[:num3].to_i
	sum = favnum3 + favnum1 + favnum2
	erb :change, :locals => {:name => name, :age => age, :favnum1 => favnum1,
							 :favnum2 => favnum2, 
							 :favnum3 => favnum3, :sum => sum }
end


post '/change' do
	name = params[:input_name]
	input_amount_to_be_reduced = params[:change].to_i
	coins = change(input_amount_to_be_reduced )
	stuff = hashconverter(coins)
	erb :change_returned, :locals => {:name => name, :stuff => stuff, :input_amount_to_be_reduced => input_amount_to_be_reduced, :change => coins }
end