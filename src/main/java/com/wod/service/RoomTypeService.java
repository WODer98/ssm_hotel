package com.wod.service;

import com.wod.entity.RoomType;
import com.wod.vo.RoomTypeVo;

import java.util.List;

public interface RoomTypeService {
    /**
     * 查询房型列表
     * @param roomTypeVo
     * @return
     */
    List<RoomType> findRoomTypeList(RoomTypeVo roomTypeVo);

    /**
     * 添加房型
     * @param roomType
     * @return
     */
    int addRoomType(RoomType roomType);

    /**
     * 修改房型
     * @param roomType
     * @return
     */
    int updateRoomType(RoomType roomType);
}