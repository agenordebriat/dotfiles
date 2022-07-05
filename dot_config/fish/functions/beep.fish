function beep --wraps=osascript\ -e\ \'beep\' --description alias\ beep=osascript\ -e\ \'beep\'
  osascript -e 'beep' $argv;
end
