class ArchivesController < ApplicationController
  def index
    @posts = Post.all.group_by(&:day)
  end
end
