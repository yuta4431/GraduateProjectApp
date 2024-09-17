class ProgramsController < ApplicationController
  before_action :set_program, only: %i[show edit update destroy]
  
  def index
    @programs = Program.all.sort_by { |program| [week_day_order(extract_day_of_week(program.day_of_week)), program.start_time] }
  end

  def new
    @programs = Program.all.order(day_of_week: :asc)
    @programs = @programs.sort_by { |program| week_day_order(program.day_of_week) }
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

  def extract_day_of_week(day_of_week)
    day_of_week.match(/(月曜日|火曜日|水曜日|木曜日|金曜日|土曜日|日曜日)/)&.to_s
  end

  def week_day_order(day_of_week)
    days = %w[月曜日 火曜日 水曜日 木曜日 金曜日 土曜日 日曜日]
    days.index(day_of_week) || 0
  end
end
