package com.mox.mapper.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mox.entity.user.AoaUser;
import tk.mybatis.mapper.common.Mapper;

@Repository
public interface AoaUserMapper extends Mapper<AoaUser> {
	AoaUser queryOne(AoaUser u);
	List<AoaUser> queryBydeptId(int id);
	AoaUser queryBydeptId1(int id);
	List<AoaUser> queryAll(String userName);
	AoaUser queryByUserId(int id);
}