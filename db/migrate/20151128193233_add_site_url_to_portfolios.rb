class AddSiteUrlToPortfolios < ActiveRecord::Migration
  def change
   add_column :portfolios, :site_url, :string
  end
end
