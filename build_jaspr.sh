# clean original implementations of frameworks
rm -rf js-framework-benchmark/frameworks/keyed/jaspr

# move extended implementations of frameworks
cp -fr frameworks/keyed/jaspr js-framework-benchmark/frameworks/keyed/jaspr/

cd js-framework-benchmark/frameworks/keyed/jaspr

cd ../jaspr && npm ci && npm run build-prod

cd ../../../../
