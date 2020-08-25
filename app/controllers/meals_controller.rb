class MealsController < ApplicationController

  # GET: /meals
  get "/meals" do
    # Controller (waiter) asks Model (kitchen) for relevant data (meal/food)
    @meals = Meal.all
    erb :"/meals/index.html"
  end

  # GET: /meals/new
  get "/meals/new" do
    erb :"/meals/new.html"
  end

  # POST: /meals
  post "/meals" do
    #assign new object to variable
    meal = Meal.create(meal_params)
    #insert happens with .create and params end up in a row in a database
    #redirect always sends a GET request
    redirect "/meals/#{meal.id}"
  end

  # GET: /meals/5 (SHOWs details about a particular meal)
  get "/meals/:id" do
    @meal = Meal.find(params[:id])
    #file below is an argument interpretted by erb #self.erb :"/meals/show.html"
    erb :"/meals/show.html"
  end

  # GET: /meals/5/edit
  get "/meals/:id/edit" do
    @meal = Meal.find(params[:id])
    erb :"/meals/edit.html"
  end

  # PATCH: /meals/5 #for update
  patch "/meals/:id" do
    #don't need to make an instance variable, because not rendering a template
    #unless doing a validation, so template we render has access to it
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect "/meals/#{@meal.id}"
  end

  # DELETE: /meals/5
  delete "/meals/:id" do
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect "/meals"
  end

  private

  def meal_params
    allowed = ["name", "price", "spicyness"]
    params.select{|key| allowed.include?(key)}
  end 

end
