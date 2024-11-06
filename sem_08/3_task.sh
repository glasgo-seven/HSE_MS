#!/bin/bash
: '
	Скрипт должен создавать архив (tar.gz) для указанной директории. Имя архива должно включать текущую дату.
'

date="$(date +'%F_%H-%M-%S')"

echo "Zipping files of \"$1\" directory into $date.zip archive..."
zip -r $date.zip $1
echo "Done!"
