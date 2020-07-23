module Spina::Comments
  module Admin
    class CommentsController < AdminController
      before_action :set_breadcrumbs

      def index
        @comments = Comment.newest_first.page(params[:page]).per(25)
      end

      def approve
        @comment = Comment.find(params[:id])
        @comment.update(approved: true)
        redirect_to spina.comments_admin_comments_path
      end

      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to spina.comments_admin_comments_path
      end

      private

        def set_breadcrumbs
          add_breadcrumb Comment.model_name.human(count: 2)
        end

    end
  end
end