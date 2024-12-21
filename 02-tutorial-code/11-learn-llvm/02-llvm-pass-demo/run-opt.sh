# find .so or .dylib file
pass_name=hello-world
plugin_name=HelloWorld
plugin_path=$(find . -name "lib${plugin_name}.*")

opt -load-pass-plugin $plugin_path -passes=$pass_name -disable-output build/input.ll
