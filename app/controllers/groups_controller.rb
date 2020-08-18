class GroupsController < ApplicationController
  def index
		@groups = Group.all
		@search_groups = Group.all.search(params[:search])
  end

  def new
    @group = Group.new
  end

	def create
		@group = Group.new(group_params)
		  if @group.save
			  redirect_to root_path
		  else
			  render :new
    end
	end
	
	def show
		@group = Group.find(params[:id])
	end

	def edit
	end

	def update
		@group = Group.find(params[:id])
		@gruop.update(group_params)
	end

	def destroy
		@group = Group.find(params[:id])
		@group.destroy
	end


	def group_params
		params.require(:group).permit(:name, :date, :place, :symptom, :cause, :treatment)
  end
end
