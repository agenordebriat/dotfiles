function pnpmrc
  echo "use-node-version=$(string sub -s 2 (pnpm node -v))" > .npmrc
end
