puts RUBY_VERSION

def it = "works"

def shows(&block) = yield

puts shows { it }
