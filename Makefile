push:
	#git checkout -b $(tag)
	git tag -f $(tag) `git rev-parse HEAD`
	#git checkout -
	#git branch -D $(tag)
	git push origin $(tag)
