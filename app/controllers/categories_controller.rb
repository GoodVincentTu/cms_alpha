class CategoriesController < ContentController
  def show
    @category = Category.includes(:pages).find params[:id]

    render template: template_to_render
  end

  protected

  def template_to_render
    if template_exists?("category-#{@category.id}")
     "category-#{@category.id}"
    else
    	"category"
    end
  end
end