FROM elasticsearch:2.4.6
RUN plugin install analysis-kuromoji 
RUN plugin install analysis-icu 
RUN plugin install mobz/elasticsearch-head
