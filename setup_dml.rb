require_relative './setup_db'

# create a Blog
blog_id = 37
insert_blog = <<-IBT
INSERT INTO blogs ( id, name, created_at) VALUES ('#{blog_id}', 'my_blog', '#{Time.now}'); 
IBT
$db_conn.exec(insert_blog)

# create 3 Posts
3.times do |i|
  post_id = i
  insert_post = <<-IPT
INSERT INTO posts ( id, blog_id, subject, contents, created_at) VALUES ('#{post_id}', '#{blog_id}', 'Post #{i} Subject', 'Post Body #{i}','#{Time.now}'); 
IPT
  $db_conn.exec(insert_post)
end

# create 3 Comments for the third Post
blog_id = 1
3.times do |i|
  post_id = 3
  insert_comment = <<-IPT
INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('#{blog_id}', '#{post_id}', 'Blog Body #{blog_id}','#{Time.now}'); 
IPT
  $db_conn.exec(insert_comment)
  puts "i is #{i}"
  blog_id = blog_id + i +1

end

# create 2 Comments for the fifth Post
2.times do |i|
  post_id = 5
  insert_comment = <<-IPT
INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('#{blog_id}', '#{post_id}', 'Blog Body #{blog_id}','#{Time.now}'); 
IPT
  $db_conn.exec(insert_comment)
  blog_id = blog_id + i +1

end
