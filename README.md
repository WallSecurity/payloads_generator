# payloads_generator

`payloads_generator <url-file> <payload-file>`

This tool loops through a provided list of URLs and replaces all parameters with payloads specified in the payload file.
Every URLs parameters are replaced with **every** payload specified in payload file, so having e.g. 10 payloads in your payload file will create a file that is **10x larger** than your initial url-file.
