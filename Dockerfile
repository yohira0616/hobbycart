FROM starefossen/ruby-node

MAINTAINER yukito ohira

WORKDIR /hobbycart
ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    ROOT_PATH=/hobbycart \
    BUNDLE_JOBS=4 \
    BUNDLE_PATH=/gems

CMD ["bash"]
