# clean original implementations of frameworks
rm -rf js-framework-benchmark/frameworks

# move extended implementations of frameworks
cp -fr frameworks js-framework-benchmark/

cd js-framework-benchmark/frameworks/keyed/jaspr

cd ../jaspr && npm ci && npm run build-prod

cd ../../../../
