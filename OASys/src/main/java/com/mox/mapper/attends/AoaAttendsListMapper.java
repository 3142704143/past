package com.mox.mapper.attends;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mox.entity.attends.AoaAttendsList;

import tk.mybatis.mapper.common.Mapper;

@Repository
public interface AoaAttendsListMapper extends Mapper<AoaAttendsList> {
	
	List<AoaAttendsList> myselect(String name);
	
	List<AoaAttendsList> selectAllMyattends(Integer id);
}