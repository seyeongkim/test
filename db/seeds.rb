# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    new_post = Post.new(title:"첫 게시글 입니다.", content:"안녕하세요, 반갑습니다.")
    new_post.save
    
    comment = Comment.new
    comment.content = "첫 댓글입니다"
    comment.post = new_post
    comment.save