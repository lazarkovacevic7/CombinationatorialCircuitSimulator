env = Environment()

objects = SConscript('src/SConscript', exports='env', variant_dir='build')

env.Program('$variant_dir/simulator', objects, variant_dir='build')