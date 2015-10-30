task :default => :tu

desc "Pruebas unitarias de la clase Fraccion"
task :tu do
  sh "ruby -I. test/test1.rb"
  sh "ruby -I. test/test2.rb"
  sh "ruby -I. test/test3.rb"
  sh "ruby -I. test/test4.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/test1.rb -n /simple/"
  sh "ruby -I. test/test2.rb -n /simple/"
  sh "ruby -I. test/test3.rb -n /simple/"
   sh "ruby -I. test/test4.rb -n /simple/"
end

desc "Ejecutar solo las pruebas de tipo"
task :type do
  sh "ruby -I. test/test1.rb -n /type/"
  sh "ruby -I. test/test2.rb -n /type/"
  sh "ruby -I. test/test3.rb -n /type/"
   sh "ruby -I. test/test4.rb -n /type/"
end

desc "Ejecutar solo las pruebas de division por cero"
task :zero do
  sh "ruby -I. test/test2.rb -n /zero/"
  sh "ruby -I. test/test3.rb -n /zero/"
end