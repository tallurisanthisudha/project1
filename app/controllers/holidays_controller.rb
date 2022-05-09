class HolidaysController < ApplicationController

    def new

        @holidays = Holiday.new
        
        end
        
        def create
        
        @holidays= Holiday.new(holidaysparams)
        
        @holidays.save
        
        render plain: @holidays.errors.inspect
        
        #redirect_to holiday_path
        
        end
        
        def holidaysparams
        
        params.permit(:name , :date , :year)
        
        end

        def holiday
            @holidays =Holiday.all
        end 
end
