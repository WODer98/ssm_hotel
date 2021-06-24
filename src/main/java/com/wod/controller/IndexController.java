package com.wod.controller;

import com.wod.entity.Floor;
import com.wod.entity.Room;
import com.wod.entity.RoomType;
import com.wod.service.FloorService;
import com.wod.service.RoomService;
import com.wod.service.RoomTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {


    @Resource
    private RoomTypeService roomTypeService;

    @Resource
    private FloorService floorService;

    @Resource
    private RoomService roomService;


    @RequestMapping("/index.html")
    public String index(Model model){
        //调用查询房型列表的方法
        List<RoomType> roomTypeList = roomTypeService.findRoomTypeList(null);
        //调用查询所有楼层列表的方法
        List<Floor> floorList = floorService.findFloorList(null);
        //调用查询每个楼层的房间列表
        List<Room> roomList = roomService.findRoomListByFloorId();
        //将数据放到模型中
        model.addAttribute("roomTypeList",roomTypeList);
        model.addAttribute("floorList",floorList);
        model.addAttribute("roomList",roomList);
        return "forward:/home.jsp";
    }

}
