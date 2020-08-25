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
    redirect "/meals"
  end

  # GET: /meals/5 (details about a particular meal)
  get "/meals/:id" do
    erb :"/meals/show.html"
  end

  # GET: /meals/5/edit
  get "/meals/:id/edit" do
    erb :"/meals/edit.html"
  end

  # PATCH: /meals/5
  patch "/meals/:id" do
    redirect "/meals/:id"
  end

  # DELETE: /meals/5/delete
  delete "/meals/:id/delete" do
    redirect "/meals"
  end
end
