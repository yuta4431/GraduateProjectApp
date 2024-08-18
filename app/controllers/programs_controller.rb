class ProgramsController < ApplicationController
  def index
    @programs = current_user.programs.includes(:hosts).order(date_and_time: :asc)
  end

  def new
    @program = Program.new
  end

  def create
    @program = current_user.programs.build(program_params)
    if @program.save
      redirect_to root_path, success: "番組メモを作成しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def program_params
    params.require(:program).permit(:name, :channel, :date_and_time)
  end
end
