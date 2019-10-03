class PagesController < ApplicationController
  def home
  end

  def show
    render template: "pages/#{params[:page]}"
  end

  def download_pdf
    send_file "#{Rails.root}/public/docs/MW_CV_Oct_2019.pdf", type: "application/pdf", x_sendfile: true
  end

end
