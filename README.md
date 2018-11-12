# Microsoft R Client on Linux for Docker

Microsoft R Client is a free, community-supported, data science tool for high performance analytics. R Client is built on top of Microsoft R Open so you can use any open source R package to build your analytics. Additionally, R Client introduces the powerful ScaleR technology and its proprietary functions to benefit from parallelization and remote computing.

R Client allows you to work with production data locally using the full set of ScaleR functions, but there are some constraints. On its own, the data to be processed must fit in local memory, and processing is limited up to two threads for RevoScaleR functions. To benefit from disk scalability, performance and speed, you can push the compute context to a production instance of Machine Learning Server (or R Server) such as SQL Server Machine Learning Services and Machine Learning Server for Hadoop. Learn more about its compatibility.

You can offload heavy processing to Machine Learning Server or test your analytics during their development. You by running your code remotely using remoteLogin() or remoteLoginAAD() from the mrsdeploy package.
