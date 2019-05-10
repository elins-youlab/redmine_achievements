Redmine::Plugin.register :achievements do
  name 'achievements'
  author 'leo'
  description 'This is a plugin for Redmine'
  version '0.0.1'

  menu :application_menu,
       :achievements,
       {
           controller: :achievements,
           action: :index
       },
       caption: 'Достижения'

  menu :application_menu,
       :results,
       {
           controller: :results,
           action: :index
       },
       caption: 'Результаты'
end
