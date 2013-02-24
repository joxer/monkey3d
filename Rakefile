require 'rawr'

namespace :bonobo do
  task :screech do
    FileUtils.rmdir("package")
    Rake::Task["rawr:compile"].invoke
    Rake::Task["rawr:jar"].invoke
    `java -jar #{Dir.pwd}/package/jar/game.jar`
    `rm *.so`
  end
end

namespace :lemur do
  task :screech do
    puts "not implemented yet"
  end
end

namespace :macaco do
  task :screech do
    puts "not implemented yet"
  end
end
