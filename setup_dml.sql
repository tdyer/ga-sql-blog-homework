require_relative './setup_db'

insert_comments_table = <<ICT
INSERT INTO comments ( id, post_id,  contents,  created_at) VALUES ("#{id_seq}", "#{post_id}, "", Time.now);
ICT
