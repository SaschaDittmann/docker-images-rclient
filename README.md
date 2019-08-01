# Microsoft R Client on Linux for Docker

[![](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/SaschaDittmann/docker-images-rclient)
[![](https://img.shields.io/github/tag/SaschaDittmann/docker-images-rclient.svg)](https://github.com/SaschaDittmann/docker-images-rclient)


## Docker Images

This Docker Image is for development & testing purposes ONLY.

[![](https://img.shields.io/docker/pulls/bytesmith/rclient.svg)](https://hub.docker.com/r/bytesmith/rclient)
[![](https://img.shields.io/docker/automated/bytesmith/rclient.svg)](https://hub.docker.com/r/bytesmith/rclient/builds)

version          | description                               | size 
---------------- | ----------------------------------------- | ------
[![](https://images.microbadger.com/badges/version/bytesmith/rclient.svg)](https://hub.docker.com/r/bytesmith/rclient) | Latest build from the [GitHub Repo](https://github.com/SaschaDittmann/docker-images-rclient) | [![](https://images.microbadger.com/badges/image/bytesmith/rclient.svg)](https://microbadger.com/images/bytesmith/rclient)
[![](https://images.microbadger.com/badges/version/bytesmith/rclient:3.5.2.svg)](https://hub.docker.com/r/bytesmith/rclient) | Microsoft R Client 3.5.2 - [GitHub Release](https://github.com/SaschaDittmann/docker-images-rclient/releases/tag/3.5.2).  | [![](https://images.microbadger.com/badges/image/bytesmith/rclient:3.5.2.svg)](https://microbadger.com/images/bytesmith/rclient:3.5.2)
[![](https://images.microbadger.com/badges/version/bytesmith/rclient:3.4.3.svg)](https://hub.docker.com/r/bytesmith/rclient) | Microsoft R Client 3.4.3 - [GitHub Release](https://github.com/SaschaDittmann/docker-images-rclient/releases/tag/3.4.3).  | [![](https://images.microbadger.com/badges/image/bytesmith/rclient:3.4.3.svg)](https://microbadger.com/images/bytesmith/rclient:3.4.3)
[![](https://images.microbadger.com/badges/version/bytesmith/rclient:3.4.1.svg)](https://hub.docker.com/r/bytesmith/rclient) | Microsoft R Client 3.4.1 - [GitHub Release](https://github.com/SaschaDittmann/docker-images-rclient/releases/tag/3.4.1).  | [![](https://images.microbadger.com/badges/image/bytesmith/rclient:3.4.1.svg)](https://microbadger.com/images/bytesmith/rclient:3.4.1)
[![](https://images.microbadger.com/badges/version/bytesmith/rclient:3.3.3.svg)](https://hub.docker.com/r/bytesmith/rclient) | Microsoft R Client 3.3.3 - [GitHub Release](https://github.com/SaschaDittmann/docker-images-rclient/releases/tag/3.3.3).  | [![](https://images.microbadger.com/badges/image/bytesmith/rclient:3.3.3.svg)](https://microbadger.com/images/bytesmith/rclient:3.3.3)

## Quickstart

```
docker run -it --rm bytesmith/rclient
```

### Start Revo64

Run the Revo64 program. By default, Revo64 is installed in the /usr/bin directory:

1. From /Home or any other working directory:
    ```
    [<path>] $ Revo64
    ```

2. Run a RevoScaleR function, such as rxSummary on a dataset. Many sample datasets, such as the iris dataset, are ready to use because they are installed with the software:
    ```
    rxSummary(~., iris)
    ```

Output from the iris dataset should look similar to the following:

```
Rows Read: 150, Total Rows Processed: 150, Total Chunk Time: 0.001 seconds
Computation time: 0.005 seconds.
Call:
rxSummary(formula = ~., data = iris)

Summary Statistics Results for: ~.
Data: iris
Number of valid observations: 150

    Name         Mean     StdDev    Min Max ValidObs MissingObs
    Sepal.Length 5.843333 0.8280661 4.3 7.9 150      0
    Sepal.Width  3.057333 0.4358663 2.0 4.4 150      0
    Petal.Length 3.758000 1.7652982 1.0 6.9 150      0
    Petal.Width  1.199333 0.7622377 0.1 2.5 150      0

Category Counts for Species
Number of categories: 3
Number of valid observations: 150
Number of missing observations: 0

    Species    Counts
    setosa     50
    versicolor 50
    virginica  50
```

To quit the program, type *q()* at the command line with no arguments.

## About the Microsoft R Client

Microsoft R Client is a free, community-supported, data science tool for high performance analytics. R Client is built on top of Microsoft R Open so you can use any open source R package to build your analytics. Additionally, R Client introduces the powerful ScaleR technology and its proprietary functions to benefit from parallelization and remote computing.

R Client allows you to work with production data locally using the full set of ScaleR functions, but there are some constraints. On its own, the data to be processed must fit in local memory, and processing is limited up to two threads for RevoScaleR functions. To benefit from disk scalability, performance and speed, you can push the compute context to a production instance of Machine Learning Server (or R Server) such as SQL Server Machine Learning Services and Machine Learning Server for Hadoop. Learn more about its compatibility.

You can offload heavy processing to Machine Learning Server or test your analytics during their development. You by running your code remotely using remoteLogin() or remoteLoginAAD() from the mrsdeploy package.
