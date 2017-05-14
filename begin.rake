namespace :init do
  desc "this should setup basic gems and bootstrap"
  task :setup => :environment do

    File.open('GemFile', "a"){ |f|
      f << "gem 'bootstrap-sass'\n"
      f << "gem 'bootstrap_form'\n"
      f << "gem 'figaro'\n"
      f << "gem 'pry-rails'\n"
      f << "gem 'hirb'\n"
    }

    sh 'bundle install'

    FileUtils.mv('app/assets/stylesheets/application.css', 'app/assets/stylesheets/application.css'.ext("scss"))
    File.open('app/assets/stylesheets/application.scss', "w"){ |file| file.write("/*\n*= require rails_bootstrap_forms\n*/\n@import \"bootstrap-sprockets\";\n@import \"bootstrap\";") }

    text = File.read('app/assets/javascripts/application.js')
    new_content = text.gsub(/jquery_ujs/, "jquery_ujs\n//= require bootstrap-sprockets")
    File.open('app/assets/javascripts/application.js', "w"){ |file| file.write(new_content) }

    sh 'mkdir -p ./lib/templates/erb/scaffold'
    sh 'bundle show railties | xargs -I{} cp "{}"/lib/rails/generators/erb/scaffold/templates/_form.html.erb ./lib/templates/erb/scaffold/_form.html.erb'

    old_form = File.read('lib/templates/erb/scaffold/_form.html.erb')
    new_form = old_form.gsub(/form_for/, "bootstrap_form_for")
    new_form = new_form.gsub(/<%%= f.label :<%= attribute.column_name %> %>/, "")
    File.open('lib/templates/erb/scaffold/_form.html.erb', "w"){ |file| file.write(new_form)}

    old_config = File.read('config/application.rb')
    new_config = old_config.gsub(/automatically loaded./, "automatically loaded.\n\t\tconfig.generators do |g|\n\t\t\tg.orm             :active_record\n\t\t\tg.template_engine :erb\n\t\t\tg.test_framework  :test_unit, fixture: true\n\t\tend")

    File.open('config/application.rb', "w"){ |file| file.write(new_config)}

  end

  desc "this should initialise git for project"
  task :git do
    sh 'git init'
    sh 'git add .'
    sh 'git commit -m "Init new rails app"'
  end
end
