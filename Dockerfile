FROM amazon/opendistro-for-elasticsearch:1.12.0

WORKDIR /usr/share/elasticsearch

ENV PATH=/usr/share/elasticsearch/bin:$PATH

RUN elasticsearch-plugin install --batch repository-s3
RUN elasticsearch-plugin install --batch repository-gcs

RUN /usr/share/elasticsearch/bin/elasticsearch-keystore create
