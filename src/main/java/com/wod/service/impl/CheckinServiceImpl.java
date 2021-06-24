package com.wod.service.impl;

import com.wod.dao.CheckinMapper;
import com.wod.dao.OrdersMapper;
import com.wod.dao.RoomMapper;
import com.wod.dao.RoomTypeMapper;
import com.wod.entity.Checkin;
import com.wod.entity.Orders;
import com.wod.entity.Room;
import com.wod.entity.RoomType;
import com.wod.service.CheckinService;
import com.wod.vo.CheckinVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Transactional
@Service
public class CheckinServiceImpl implements CheckinService {

    @Resource
    private CheckinMapper checkinMapper;

    @Resource
    private OrdersMapper ordersMapper;

    @Resource
    private RoomTypeMapper roomTypeMapper;
    @Resource
    private RoomMapper roomMapper;

    /**
     * 查询入住列表
     *
     * @param checkinVo
     * @return
     */
    public List<Checkin> findCheckinList(CheckinVo checkinVo) {
        return checkinMapper.findCheckinList(checkinVo);
    }


    @Transactional(rollbackFor = RuntimeException.class)
    public int addCheckin(Checkin checkin) {
        //入住状态
        checkin.setStatus(1);//1-已入住
        checkin.setCreatedate(new Date());//创建时间
        //1.添加入住信息
        int count = checkinMapper.addCheckin(checkin);
        if (count>0) {
            //2.修改预定订单的状态（t_orders中的status列， 1-待确认 2-已确认 3-已入住）
            Orders orders = new Orders();
            orders.setId(checkin.getOrdersid());//预定订单的id
            orders.setStatus(3);//已入住
            //调用修改订单的方法
            ordersMapper.updateOrders(orders);
            //3.修改房型表中的已入住数量（t_room_type中的livednum列，值+1）
            //3.1查询原有的房型信息
            RoomType roomType = roomTypeMapper.findById(checkin.getRoomtypeid());
            roomType.setLivednum(roomType.getLivednum()+1);
            //3.2更新房型
            roomTypeMapper.updateRoomType(roomType);

            Room room = roomMapper.findById(checkin.getRoomid().intValue());
            room.setStatus(2);//修改房间状态为已入住
        }
        return count;
    }
}
