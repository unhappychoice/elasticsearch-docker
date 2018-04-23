FROM elasticsearch:2.4.6
RUN plugin install analysis-kuromoji 
RUN plugin install analysis-icu 
RUN plugin install mobz/elasticsearch-head
RUN echo "script.inline: on" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo "script.indexed: on" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo "script.engine.groovy.inline.search: on" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo "script.search: on" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo "script.groovy.sandbox.enabled: true" >> /usr/share/elasticsearch/config/elasticsearch.yml
