$<.map{|l|s=[];f=!p;d=p;exit if l==".\n";l.each_char{|c|
  s << c if c==(?(||?[)
  f=p if c==?)&&s.pop!=?(
  f=p if c==?]&&s.pop!=?[
  d=!p||break if c==?.}
f=p if !s.empty?
puts f ? 'yes' : 'no' if d}