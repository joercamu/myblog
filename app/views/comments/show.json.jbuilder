json.extract! @comment, :id, :user, :article_id, :body, :created_at, :updated_at
json.user @comment.user.email
