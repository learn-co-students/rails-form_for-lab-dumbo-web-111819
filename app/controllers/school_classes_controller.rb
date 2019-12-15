class SchoolClassesController < ApplicationController

    def index
        @classes = SchoolClass.all
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def new
        @class = SchoolClass.new
    end

    def create
        # byebug
        @class = SchoolClass.create(school_classes_params)

        redirect_to "/school_classes/#{@class.id}"
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(school_classes_params)

        redirect_to "/school_classes/#{@class.id}"
    end

    private

    def school_classes_params
        school_classes_params = params.require(:school_class).permit(:title, :room_number)
    end

end
