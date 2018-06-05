# Check which file has an error
for (f in list.files("~/path/to/directory/", full.names=TRUE)){
  print(f)
  parse(f)
}
