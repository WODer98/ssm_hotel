package com.wod.service.impl;

import com.wod.dao.DeptMapper;
import com.wod.entity.Dept;
import com.wod.service.DeptService;
import com.wod.vo.DeptVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


@Service
@Transactional
public class DeptServiceImpl implements DeptService {

    @Resource
    private DeptMapper deptMapper;

    /**
     * 查询部门列表
     *
     * @param deptVo
     * @return
     */
    public List<Dept> findDeptListByPage(DeptVo deptVo) {
        return deptMapper.findDeptListByPage(deptVo);
    }

    public int addDept(Dept dept) {
        //保存创建时间
        dept.setCreateDate(new Date());
        return deptMapper.addDept(dept);
    }

    public int updateDept(Dept dept) {
        return deptMapper.updateDept(dept);
    }

    public int deleteById(Integer id) {
        return deptMapper.deleteById(id);
    }

    public List<Dept> findDeptList() {
        return deptMapper.findDeptList();
    }
}
