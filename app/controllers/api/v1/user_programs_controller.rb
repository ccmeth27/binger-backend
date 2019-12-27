class Api::V1::UserProgramsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
    
    def index
      user_programs = UserProgram.all
        render json: {
          user_programs: user_programs,
        }
    end

    def create
      user_program = UserProgram.new(
        user_id: params[:user_id],
        program_id: params[:guidebox_id],
        is_seen: params[:is_seen],
        is_rejected: params[:is_rejected],
        is_watchlist: params[:is_watchlist],
        title: params[:title],
        poster: params[:poster],
        release_year: params[:release_year],
        imdb: params[:imdb],
        rottentomatoes: params[:rottentomatoes],
      )
      if user_program.save!
        render json: {
          status: :created,
          user_program: user_program,
        }
      else 
        render json: {
          status: 500,
          errors: user_program.errors.full_messages
        }
      end
    end

end