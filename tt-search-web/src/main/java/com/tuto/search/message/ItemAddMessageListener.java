package com.tuto.search.message;


import com.tuto.dao.TtTripSearchCustomMapper;
import com.tuto.pojo.vo.TtTripSearchCustom;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * 1 接收消息
 * 2 按照ID查询商品
 * 3 添加到索引库
 * User: DHC
 * Date: 2017/11/24
 * Time: 9:44
 * Version:V1.0
 */
public class ItemAddMessageListener implements MessageListener {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtTripSearchCustomMapper ttTripSearchCustomDao;
    @Autowired
    private SolrServer solrServer;

    @Override
    public void onMessage(Message message) {
        try {
            //接收消息，并且获取到商品ID
            TextMessage textMessage = (TextMessage)message;
            String text = textMessage.getText();
            Long tripId = Long.parseLong(text);
            //按照商品ID查询出指定商品
            TtTripSearchCustom ttTripSearchCustom = ttTripSearchCustomDao.getById(tripId);
            //添加到索引库
            //添加到document
            SolrInputDocument document = new SolrInputDocument();
            document.addField("id",ttTripSearchCustom.getId());
            document.addField("trip_title",ttTripSearchCustom.getTitle());
            document.addField("trip_s_title",ttTripSearchCustom.getsTitle());
            document.addField("trip_price",ttTripSearchCustom.getPrice());
            document.addField("trip_real_price",ttTripSearchCustom.getRealPrice());
            document.addField("trip_image",ttTripSearchCustom.getImage());

            //添加到索引库
            solrServer.add(document);
            solrServer.commit();
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
    }
}
