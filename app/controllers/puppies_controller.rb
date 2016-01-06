# rest methods are from config/routes
class PuppiesController < ApplicationController
	respond_to :html
	before_action :find_puppy, except:[:index, :new, :create]
	def index
		# load puppies using Active Record
		# render view that is in view method
		@puppies = Puppy.all
		respond_with @puppies

	end
	def show
		respond_with @puppy
	end

	# named the same as the action
	def new
		@puppy = Puppy.new
		respond_with @puppy
	end

	# forbidden attributes - can tell model what attr are forbidden and what are not
	def create
		@puppy = Puppy.create(puppy_params)
		respond_with @puppy
	end

	def edit
		respond_with @puppy
	end
	def update 
		@puppy.update(puppy_params)
		respond_with @puppy
	end 
	def destroy
		@puppy.destroy()
		respond_with @puppy
	end

	private

	def puppy_params
		params.require(:puppy).permit(:owner, :description, :color)
	end

	def find_puppy
		@puppy = Puppy.find(params[:id])
	end

end
