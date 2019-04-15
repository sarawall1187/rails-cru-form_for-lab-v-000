class SongsController < ApplicationController

    def index
        @songs = Song.all 
    end

    def new 
        @song = Song.new
    end

    def create 
        @song = Song.create(params.require[:song].permit(:name))
        redirect_to song_path(@song)
    end
end
