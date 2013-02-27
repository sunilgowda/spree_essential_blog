class SpreeEssentialBlog::Constraints
  def self.matches? request
    blogs.include? request.params[:blog_id]
  end

  def self.blogs
    @@__blogs ||= Spree::Blog.all.map &:permalink
  end
end
