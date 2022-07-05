function tv
  set -l playlist '/Users/agenordebriat/Library/Mobile Documents/com~apple~CloudDocs/IPTV/IPTV.txt'
  cat $playlist | fzf | read search_result
  echo $search_result
  cat $playlist | grep -A1 $search_result | tail -n1 | pbcopy && open -a Elmedia\ Player
end
