# this page generates automatically when I run command bin/rails generate controller Pages

class PagesController < ApplicationController
    before_action :set_page, except: [:index, :new, :create]
    # OR I can use this record
    # before_action :set_page, except: [:show, :edit, :update, :destroy]
   
    def index
        @pages = Page.all
    end

    def show
    end

    def new
        @page = Page.new
    end

    def create
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end

    def edit
    end

    def update
        @page.update(page_params)
        redirect_to @page
    end

    def destroy
        @page.destroy
        redirect_to pages_path
    end

    private
    #  private means that method below can be used only within the class
        def page_params
            params.require(:page).permit(:title, :body, :slug)
        end

        def set_page
            @page = Page.find(params[:id])
        end






end
