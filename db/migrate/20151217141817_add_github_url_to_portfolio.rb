class AddGithubUrlToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :github_url, :string
  end
end
