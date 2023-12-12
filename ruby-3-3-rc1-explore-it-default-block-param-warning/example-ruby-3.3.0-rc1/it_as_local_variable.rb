puts RUBY_VERSION

def test(&block)
  it = 2
  puts "`it` before the block call = #{it}"

  yield(it)
end

test do |it|
  puts "`it` inside the block = #{it}"
end
