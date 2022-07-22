unless File.basename(File.dirname(__FILE__)) == 'progressive_projects_list'
  raise "Progressive Project List plugin directory should be 'progressive_projects_list' instead of '#{File.basename(File.dirname(__FILE__))}'"
end

Redmine::Plugin.register :progressive_projects_list do
  name 'Progressive Projects List plugin'
  author 'Dmitry Babenko and Updated by Rizvi'
  description 'Projects List with menus and progress bars. Redmine 5 updates'
  version '5.0.0'
  url 'https://ergoserv.github.io/redmine-progressive-projects-list/'
  author_url 'https://github.com/ergoserv'
  requires_redmine version_or_higher: '3.3'

  settings default: {
    'show_project_description'  => false,
    'show_project_progress'     => true,
    'show_project_menu'         => false,
    'show_only_for_my_projects' => false,
    'show_recent_projects'      => true,
    'show_project_progress_overview' => ''
  }, partial: 'settings/progressive_projects_list'
end

require_relative "lib/progressive_projects_list"
require_relative "lib/progressive/application_helper_patch"
require_relative "lib/progressive/projects_helper_patch"
require_relative "lib/progressive/projects_list_view_listener"
require_relative "lib/progressive/recent_projects_view_listener"
