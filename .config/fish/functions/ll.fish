function ll --wraps=ls --wraps='eza -laa --icons=always --group-directories-first --no-time' --description 'alias ll eza -laa --icons=always --group-directories-first --no-time'
  eza -laa --icons=always --group-directories-first --no-time $argv
        
end
