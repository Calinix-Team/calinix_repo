rm calinix.db calinix.files

echo "repo-add"
repo-add -s -n -R calinix.db.tar.gz *.pkg.tar.zst

sleep 1

rm calinix.db
rm calinix.db.sig

rm calinix.files
rm calinix.files.sig

mv calinix.db.tar.gz calinix.db
mv calinix.db.tar.gz.sig calinix.db.sig

mv calinix.files.tar.gz calinix.files
mv calinix.files.tar.gz.sig calinix.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"