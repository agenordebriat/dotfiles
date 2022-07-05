function dockerps --wraps='docker ps --format "{{.ID}} => {{.Names}} [{{.Image}}] ({{.Status}})"' --description 'alias dockerps=docker ps --format "{{.ID}} => {{.Names}} [{{.Image}}] ({{.Status}})"'
  docker ps --format "{{.ID}} => {{.Names}} [{{.Image}}] ({{.Status}})" $argv;
end
