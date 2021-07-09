#!/bin/bash
# rename 'y/A-Z/a-z/' *
for f in *
do
  new="${f// /_}"
  if [ "$new" != "$f" ]
  then
    if [ -e "$new" ]
    then
      echo no se renombrando \""$f"\" porque \""$new"\" ya existe
    else
      echo renombrando "$f" a "$new"
    mv "$f" "$new"
  fi
fi
done