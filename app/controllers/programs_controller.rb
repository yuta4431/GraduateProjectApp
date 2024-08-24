class ProgramsController < ApplicationController
  before_action :set_program, only: %i[show edit update destroy]
  
  def index
    @programs = Program.all
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      redirect_to programs_path, success: "番組情報を作成しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    if @program.update(program_params)
      redirect_to @program, success: "番組情報を更新しました"
    else
      flash.now[:danger] = "番組情報を更新できませんでした"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @program.destroy!
    redirect_to programs_path, success: "番組情報を削除しました", status: :see_other
  end

  private

  def program_params
    params.require(:program).permit(:title, :host_name, :channel, :day_of_week, :start_time, :end_time)
  end
  
  def set_program
    @program = Program.find(params[:id])
  end
end
