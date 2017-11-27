package com.tuto.dao;

import com.tuto.pojo.vo.TtTripSearchCustom;
import com.tuto.pojo.vo.TtTripSearchResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SearchTripDao {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SolrServer solrServer;

    public TtTripSearchResult search(SolrQuery query) {
        TtTripSearchResult result = null;
        try {
            //根据query查询索引库
            QueryResponse queryResponse = solrServer.query(query);
            //取查询结果。得到索引库中文档域对象
            SolrDocumentList solrDocumentList = queryResponse.getResults();
            //取查询结果总记录数。对应solr后台查询结果中numFound
            long numFound = solrDocumentList.getNumFound();
            result = new TtTripSearchResult();
            result.setRecordCount(numFound);
            //取商品列表，需要取高亮显示
            Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
            List<TtTripSearchCustom> tripList = new ArrayList<>();
            //遍历文档域对象
            for (SolrDocument solrDocument : solrDocumentList) {
                TtTripSearchCustom trip = new TtTripSearchCustom();
                trip.setId((String) solrDocument.get("id"));
                trip.setImage((String) solrDocument.get("trip_image"));
                trip.setPrice((long) solrDocument.get("trip_price"));
                trip.setRealPrice((long) solrDocument.get("trip_real_price"));
                trip.setsTitle((String) solrDocument.get("trip_s_title"));
                trip.setTitle((String) solrDocument.get("trip_title"));
                //取高亮显示
//                {
//                    "1039296": {
//                    "item_title": [
//                    "合约惠<em style=\"color:red\">机</em>测试<em style=\"color:red\">手机</em>（请勿下单）"
//                        ]
//                }}
                List<String> list = highlighting.get(solrDocument.get("id")).get("trip_title");
                String title = "";
                if (list != null && list.size() > 0) {
                    //高亮部分
                    title = list.get(0);
                } else {
                    //无高亮部分
                    title = (String) solrDocument.get("trip_title");
                }
                trip.setTitle(title);
                //添加到商品列表
                tripList.add(trip);
            }
            result.setTripList(tripList);
        } catch (Exception e){
            logger.error(e.getMessage(), e);
        }
        //返回结果
        return result;
    }
}
