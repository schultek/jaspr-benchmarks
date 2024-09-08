# clean original implementations of frameworks
rm -rf js-framework-benchmark/frameworks/keyed/jaspr
rm -rf js-framework-benchmark/frameworks/keyed/jaspr_wasm

# move extended implementations of frameworks
cp -fr frameworks/keyed/jaspr js-framework-benchmark/frameworks/keyed/jaspr/
cp -fr frameworks/keyed/jaspr_wasm js-framework-benchmark/frameworks/keyed/jaspr_wasm/

cd js-framework-benchmark/frameworks/keyed/jaspr

cd ../jaspr && npm ci && npm run build-prod
cd ../jaspr_wasm && npm ci && npm run build-prod

cd ../../../../
