class CoursController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user, only: :destroy
    
def create
@cour = current_user.cours.build(cour_params) 
if @cour.save
flash[:success] = "Courcreated!"
redirect_to root_url
else
 @feed_items = []
render 'pages/home'
end
end

def destroy
@cour.destroy
flash[:success] = "Cour deleted"
redirect_to request.referrer || root_url
end 

private
def cour_params 
    params.require(:cour).permit(:content, :picture)
end

def correct_user
@cour = current_user.cours.find_by(id: params[:id])
redirect_to root_url if @cour.nil?
end

end
