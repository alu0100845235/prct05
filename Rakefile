task :default => :tu

desc "Pruebas unitarias de la clase Fraccion"
task :tu do
  sh "ruby -I. test/test1.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/test1.rb -n /simple/"
end

desc "Ejecutar solo las pruebas de tipo"
task :type do
  sh "ruby -I. test/test1.rb -n /type/"
end