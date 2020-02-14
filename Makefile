clean:
	rm *.nupkg
pack:
	choco pack
install:
	choco install -y helmfile -dv -s .
push:
	git push
	choco push .\helmfile.0.99.1.nupkg -s https://chocolatey.org --apikey=${apikey}