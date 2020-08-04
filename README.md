# MNIST Beaker Example

This is an example of how to train a Pytorch MNIST model in Beaker.

The mnist data is current already available on Beaker under [`marc/mnist`](https://beaker.org/ds/ds_kf6v919aq7hk/details).

## Vanilla usage:

1. install pytorch and torchvision
2. set the python path:

```bash
export PYTHONPATH=.
```

3. download the four MNIST files from [Yann Lecun's website](http://yann.lecun.com/exdb/mnist/) and put them somewhere
4. run the main file

```bash
EPOCH=10; python beaker_pytorch/main.py \
    --data-dir /path/to/data \
    --output-dir /tmp/output \
```

## Docker usage:

1. build the docker image

```bash
docker build -t mnist .
```



## Beaker usage

1. [Install Beaker](https://github.com/allenai/beaker)
2. You can choose to download the MNIST data above and create a new dataset or use the existing MNIST dataset named
`marc/mnist` located [here](https://beaker.org/ds/ds_kf6v919aq7hk/details)
3. You can either rebuild and push the docker image above or use the existing Image named [`marc/mnist`](https://beaker.org/im/im_wsmthunsqok3/details)

If you chose to rebuild use
```bash
beaker image create -n mnist mnist
```
to create an image. Please note that you may only have one Image called `mnist`, so you may have to change this name.

4. Run the experiment:

```
beaker experiment run -f spec.yml
```
