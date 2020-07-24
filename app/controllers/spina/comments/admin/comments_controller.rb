module Spina::Comments
  module Admin
    class CommentsController < AdminController
      before_action :set_breadcrumbs

      def index
        @comments = Comment.newest_first.page(params[:page]).per(25)
      end

      def edit
        @comment = Comment.find(params[:id])
      end

      def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to spina.comments_admin_comments_path
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

        def comment_params
          params.require(:comment).permit(:body)
        end

        def set_breadcrumbs
          add_breadcrumb Comment.model_name.human(count: 2)
        end

    end
  end
end