# encoding: utf-8
namespace :mobit do

  task :init => :environment do
    puts "\n\n\e[32m█ Mobit #{Mobit::VERSION} █ Initialize\e[0m"

    if File.exist?(full_path)
      puts "\e[33m█ Mobit #{Mobit::VERSION} █ Config file already exist ⚠\e[0m"
      puts "You can reset config file, run: \e[31mrake mobit:reset\e[0m\n\n\n"
    else
      File.open(full_path, 'w') do |f|
        f.write default_config_text
      end
      puts "\e[32m█ Mobit #{Mobit::VERSION} █ Config file created ✔\e[0m"
      puts "See path:\e[33m#{full_path.to_s}\e[0m\n\n\n"
    end
  end

  task :reset => :environment do
    puts "\n\n\e[32m█ Mobit #{Mobit::VERSION} █ Reset config file \e[0m"

    File.open(full_path, 'w') do |f|
      f.write default_config_text
    end
    puts "\e[32m█ Mobit #{Mobit::VERSION} █ Config file rewrite ✔\e[0m"
    puts "See path:\e[33m#{full_path.to_s}\e[0m\n\n\n"
  end


  # Helper methods

  # Config file fullpath
  def full_path
    # Full path config/initializers/***.rb
    Rails.root.join('config', 'initializers', Mobit::CONFIG_FILE)
  end

  # Default Config file content
  def default_config_text
    File.read(__dir__ + '/files/default_config.rb')
  end

end