class Api::V1::UserProgramsController < Api::V1::BaseController
    def index
      @user_programs = UserProgram.all
    end
  end