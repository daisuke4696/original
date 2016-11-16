class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
end


private

def set_main_content_bg_white_color
  @main_content_bg_color = Settings.main_content_bg_color.white
end