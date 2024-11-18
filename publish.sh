VERSION=${VERSION:-"v0.50.10-helios-1"}

echo "Deploy go-ethereum-hdwallet"
git add .
git commit -m "Publish $VERSION"
git push
git tag $VERSION
git push origin $VERSION
GOPROXY=proxy.golang.org go list -m github.com/Helios-Chain-Labs/go-ethereum-hdwallet@$VERSION

echo "Publish done"