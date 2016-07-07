symbols = []
done = false
flg = true
while line=gets
  line.chomp!
  if line == "." then break end
  line.each_char do |c|
    case c
      when '(', '['
        symbols << c
      when ')'
        flg = false if symbols.pop != '('
      when ']'
        flg = false if symbols.pop != '['
      when '.'
        done = true
        break
    end
  end
  flg = false unless symbols.empty?
  if done
    puts flg ? 'yes' : 'no'
    flg = true
    done = false
    symbols = []
  end
end
