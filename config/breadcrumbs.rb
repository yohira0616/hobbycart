crumb :root do
  link "トップ", root_path
end

# 管理画面

crumb :users do
  link "ユーザー", admins_users_path
  parent :root
end

crumb :user do |user|
  link user.screen_name,admins_user_path(user)
  parent :users
end

crumb :items do
  link "商品", admins_items_path
  parent :root
end

crumb :item do |item|
  link item.name, admins_item_path(item)
  parent :items
end

crumb :comments do
  link "コメント",admins_comments_path
  parent :root
end

crumb :comment do |comment|
  link comment.id,admins_comment_path(comment)
  parent :comments
end

crumb :reviews do

end

crumb :item_purchase_logs do

end

crumb :reactions do

end

# フロント TODO

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
