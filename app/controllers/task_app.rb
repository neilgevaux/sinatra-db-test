class TaskApp < Sinatra::Base


get '/' do
    erb :"tasks/new"
end

post '/' do
    task = Task.new(params["task"])
    if task.save
        redirect "/tasks/#{task.id}"
    else
        erb :"tasks/new"
    end
end

get 'tasks/:id' do
    @task = Task.find(params[:id])
    erb :"tasks/show"
end

end