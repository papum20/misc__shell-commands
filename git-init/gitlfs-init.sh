if (( $# == 0 ))
then
	echo "missing remote (ssh) url"
	exit 1
fi

git init
git lfs install
cp ../.gitattributes .
cp ../.gitignore .
git remote add origin $1
git pull --set-upstream --allow-unrelated-histories origin master
git add .
git commit -am "first commit, using lfs"
git push
