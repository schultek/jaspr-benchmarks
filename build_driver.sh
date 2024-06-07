# clone repo
rm -rf js-framework-benchmark
git clone https://github.com/krausest/js-framework-benchmark

# install
cd js-framework-benchmark
npm ci

# compile bench driver
cd webdriver-ts
npm ci 
npm run compile

# compile results driver
cd ../webdriver-ts-results
npm ci

# move to root
cd ../../
