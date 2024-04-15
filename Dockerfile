FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

RUN apt-get update && apt-get install -y libgl1-mesa-glx libpci-dev curl nano psmisc zip git && apt-get --fix-broken install -y

RUN conda install -y matplotlib numpy imageio scikit-learn && \
    pip install torch torchvision

COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/
