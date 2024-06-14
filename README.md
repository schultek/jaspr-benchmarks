## Jaspr - Benchmarks

Extended version of widely accepted [js-framework-bench](https://github.com/krausest/js-framework-benchmark/) for benchmarking [Jaspr](https://github.com/schultek/jaspr/). Although js-framework-bench is great in its original form but it doesn't bench some cases such as adding or moving rows around etc. This repo includes scripts that extend js-framework-bench by including aforementioned cases and helps getting deep insights into the performance of Jaspr.

## Results

You can check out latest published results at https://jaspr-benchmarks.web.app/.

**Note**: The primary purpose of benchmarks is to discover bottlenecks that might accidentally get introduced during development. Benchmarking Angular & React-JS alongside helps gaining an independent perspective about how well Jaspr is performing compares to JS frameworks. 

## Running Benchmarks

If running for the first time, build driver using `sh build_driver.sh`.

> ❗ NOTE: Google Chrome will have to be installed for the benchmarks to run.

### 1. Benchmarking only Jaspr

1. Make sure server is up:
    ```sh
    sh spin_server.sh
    ```

2. Build Jaspr:
    ```sh
    sh build_jaspr.sh
    ```

2. Run benchmarks:
    ```sh
    # benchmark only Jaspr
    sh run_jaspr.sh 
    ```

3. After running, build results table:
    ```sh
    sh build_results.sh
    ```
   Visit: http://localhost:8080/webdriver-ts-results/dist/index.html on your machine to view results.

### 2. Benchmarking two versions of Jaspr

1. Make sure server is up:
    ```sh
    sh spin_server.sh
    ```

2. Add base and head version information in `run_compare.sh`.

3. Run `sh run_compare.sh`

Visit: http://localhost:8080/webdriver-ts-results/dist/index.html on your machine to view results.

### 3. Benchmarking Jaspr against React & Angular

1. Make sure server is up:
    ```sh
    sh spin_server.sh
    ```

2. Build frameworks:
    ```sh
    sh build_all.sh
    ```

2. Run benchmarks:
    ```sh
    # benchmark Jaspr, React & Angular
    sh run_all.sh 
    ```

3. After running, build results table:
    ```sh
    sh build_results.sh
    ```
    Visit: http://localhost:8080/webdriver-ts-results/dist/index.html on your machine to view results.

## Credits

[Stefan Krause](https://github.com/krausest/) for creating [js-framework-benchmark](https://github.com/krausest/js-framework-benchmark)
