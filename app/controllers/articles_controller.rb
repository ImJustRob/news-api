class ArticlesController < ApplicationController
    def index
        response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&from=2024-09-20&sortBy=publishedAt&apiKey=#
        {Rails.application.credentials[:news_api_key]}") 
        p response.parse(:json)
        render json: response.parse(:json)
    end
end
