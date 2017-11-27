package com.tuto.service.impl;

import com.tuto.dao.SearchTripDao;
import com.tuto.dao.TtTripSearchCustomMapper;
import com.tuto.pojo.vo.TtTripSearchCustom;
import com.tuto.pojo.vo.TtTripSearchResult;
import com.tuto.service.SearchTripService;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 14:11
 * Version:V1.0
 */
@Service
public class SearchTripServiceImpl implements SearchTripService {

    @Autowired
    private TtTripSearchCustomMapper tbTripSearchCustomDao;
    @Autowired
    private SolrServer solrServer;
    @Autowired
    private SearchTripDao searchTripDao;

    @Override
    public boolean importAllItems() {
        //采集数据：查询数据到List
        List<TtTripSearchCustom> list = tbTripSearchCustomDao.listSearchTrips();
        //创建索引库  documentList
        //遍历
        for (TtTripSearchCustom ttTripSearchCustom : list){
            //创建solr的文档对象
            //先形成文档对象，再形成文档域
            //文档对象Field的name与scheme.xml配置的内容保持一致
            SolrInputDocument document = new SolrInputDocument();
            document.addField("id",ttTripSearchCustom.getId());
            document.addField("trip_title",ttTripSearchCustom.getTitle());
            document.addField("trip_s_title",ttTripSearchCustom.getsTitle());
            document.addField("trip_price",ttTripSearchCustom.getPrice());
            document.addField("trip_real_price",ttTripSearchCustom.getRealPrice());
            document.addField("trip_image",ttTripSearchCustom.getImage());
            //写入索引库
            try {
                solrServer.add(document);
            } catch (SolrServerException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //提交
        try {
            solrServer.commit();
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public TtTripSearchResult search(String keyword, Integer page, int rows) {
        //创建一个SolrQuery对象
        SolrQuery query = new SolrQuery();
        //设置查询条件
        query.setQuery(keyword);
        //设置分页条件
        if (page <=0 ) page = 1;
        query.setStart((page - 1) * rows);
        query.setRows(rows);
        //设置默认搜索域
        query.set("df", "trip_keywords");
        //开启高亮显示
        query.setHighlight(true);
        query.addHighlightField("trip_title");
        query.addHighlightField("trip_sTitle");
        query.addHighlightField("trip_title");
        query.setHighlightSimplePre("<em style=\"color:red\">");
        query.setHighlightSimplePost("</em>");
        //调用dao执行查询
        TtTripSearchResult searchResult = searchTripDao.search(query);
        //计算总页数
        long recordCount = searchResult.getRecordCount();
        int totalPage = (int) ((recordCount + rows - 1) / rows);
        //添加到返回结果
        searchResult.setTotalPages(totalPage);
        //返回结果
        return searchResult;
    }
}
